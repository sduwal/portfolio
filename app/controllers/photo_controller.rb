class PhotoController < ApplicationController
    def photo
        @photo=Photo.all
    end
end
