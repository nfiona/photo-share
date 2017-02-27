class AlbumsController < ApplicationController

  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
  end

  def create
    @album = current_user.albums.create!(album_params)

    redirect_to album_path(@album)
  end

  def edit
    @album = Album.find(params[:id])
  end

def update
  @album = Album.find(params[:id])
  @album.update(album_params)

  redirect_to album_path
end

def destroy
  @album = Album.find(params[:id])
  if @album.user == current_user
    @album.destroy
  else
    flash[:alert] = "Only the owner of the album can delete!"
  end

  redirect_to albums_path
end




private
def album_params
  params.require(:album).permit(:title, :img_url)
end


end
