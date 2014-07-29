class ApplicationController < ActionController::Base 
  def show
    @movie = Movie.find_by_id(params['id'])
    render 'show'
  end
  def new
  end
  def create
    g = Movie.new
    g.title = params['title']
    g.url = params['url']
    g.desc = params['desc']
    g.src = params['src']
    g.save
    redirect_to "/movies/#{ g.id }"
  end
  def destroy
    g = Movie.find_by_id(params['id'])
  g.destroy
end
 def update
  g = Movie.find_by_id(params['id'])
  g.title = params['title']
  g.url = params['url']
  g.src = params['src']
  g.desc = params['desc']
  g.save
  redirect_to "/movies/#{ g.id }"
 end
    def edit
    @movie = Movie.find_by_id(params['id'])
end
  def index
    @movies = Movie.all
  end
end
