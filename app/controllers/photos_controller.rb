class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

def show
  @photoid=params["id"]
  @photo_link=Photo.find(@photoid).source
  @photo_caption=Photo.find(@photoid).caption
  render("show.html.erb")
end

end

