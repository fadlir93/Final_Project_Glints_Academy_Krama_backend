module Api
    module V1        
        class PlacesController < ApplicationController
            before_action :set_place, only: [ :show, :update, :delete]
            skip_before_action :verify_authenticity_token

            def index
                places = Place.all
                if places.present?
                    render json: places, status: :ok
                    # render json:{ status: "ok", data: articles, errors: nil} status: :ok
                else
                    render json: {
                        message: "data not found"
                    }, status: :unprocessable_entity
                end
            end

        

            def show
                @place = set_place
                render json: {result: true, place: @place}, status: :ok
            end

            def create
                @place = Place.create(place_param)
                if @place.save
                    render json: {result: true, places: @place}, status: :created
                else
                    render json: {result: false, places: @place.errors}, status: :unprocessable_entity
                end
            end

            def update
                if @place.update(place_param)
                    render json: { result: true, msg: "update success"}
                else
                    render json: { result: false, msg: "update failed"}
                end
            end

            def delete
                if @place.destroy
                    render json: {result: true, msg: "delete success"}
                else
                    render json: {result: false, msg: "delete failed"}
                end
            end
            private
            def place_param
                params.require(:place).permit(:title_place, :desc_place, :img_place, :image)
            end

            def set_place
                @place = Place.find_by(id: params[:id])
            end
        end
    end
end