class PhotosController < ApplicationController


    def show
      @album = Album.find(params[:album_id])
      @photo = @album.photos.find(params[:id])
    end

    def new
      @album = Album.find(params[:album_id])
      @photo = @album.photos.new
    end

    def create
      @album = Album.find(params[:album_id])
      @photo = @album.photos.create!(photo_params)

      redirect_to album_path(@album)
    end

    def edit
      @album = Album.find(params[:album_id])
      @photo = Photo.find(params[:id])
    end

    def update
      @album = Album.find(params[:album_id])
      @photo = @album.photos.find(params[:id])
      @photo.update(photo_params)

      redirect_to album_photo_path(@album,@photo)
    end

    def destroy
      @album = Album.find(params[:album_id])
      @photo = Photo.find(params[:id])
      @photo.destroy

      redirect_to album_path(@album)
    end

    private
    def photo_params
      params.require(:photo).permit(:img_url, :description, :settings)
    end



end
