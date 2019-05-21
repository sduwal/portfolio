class PhotoController < ApplicationController
    def photo
        @photo=Photo.order(created_at: :desc).page(params[:page]).per(15)
    end
end
