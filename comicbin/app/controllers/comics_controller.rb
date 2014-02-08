class ComicsController < ApplicationController

  def index
    @comics = Comic.all.order("title desc")
  end

  def show
  	comic_id = params["id"]
  	@comic = Comic.find_by :id => comic_id

  	render 'show'
  end

  def delete
  	comic_id = params["id"]
    Comic.destroy(comic_id)
  	redirect_to '/comics'
  end

  def new
    @comic = Comic.new
  	render 'new'
  end

  def create
  	c  = Comic.new
  	c.title = params["title"]
  	c.description = params["description"]
  	c.image_url = params["image_url"]
  	c.save
    redirect_to "/comics"
  end
end