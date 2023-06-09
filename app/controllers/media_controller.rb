class MediaController < ApplicationController
    skip_before_action :authorized, only: [:create, :loggedin, :index, :show, :update, :destroy]

    def index
        media=Medium.all
        render json: media
    end

    def show
        media=Medium.find(params[:id])
        render json: media
    end

    def create
      media = Medium.create(medium_params)
      render json: media
    end


    def update
        media=Medium.find(params[:id])
        media.update(media_params)
        render json: media
    end

    def destroy
        media=Medium.find(params[:id])
        media.destroy
        render json: media
    end

    private

    def medium_params
        params.permit(:image_url, :space_id)
      end


end
