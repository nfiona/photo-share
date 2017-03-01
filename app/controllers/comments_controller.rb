class CommentsController < ApplicationController

  def new
      @album = Album.find(params[:album_id])
      @photo = Photo.find(params[:photo_id])
      @comment = Comment.new
    end
    def create
      @album = Album.find(params[:album_id])
      @photo = Photo.find(params[:photo_id])
      @comment = @photo.comments.create(comment_params)
      redirect_to album_photo_path(@album,@photo)
    end
    def edit
      @album = Album.find(params[:album_id])
      @photo = Photo.find(params[:photo_id])
      @comment = Comment.find(params[:id])
    end
    def update
      @album = Album.find(params[:album_id])
      @photo = Photo.find(params[:photo_id])
      @comment = Comment.find(params[:id])
      @comment.update(comment_params)
      redirect_to album_photo_path(@photo)
    end
    def destroy
      @album = Album.find(params[:album_id])
      @photo = Photo.find(params[:photo_id])
      @comment = Comment.find(params[:id])

      if @comment.user == current_user
      @comment.destroy
    else
      flash[:alert] = "Only the owner of the comment can delete!"
    end
    
      redirect_to album_photo_path(@album,@photo)
    end
    private
    def comment_params
      params.require(:comment).permit(:body)
    end



end
