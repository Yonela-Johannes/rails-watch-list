class MovieController < ApplicationController
  before_action :set_movie, only: %i[ show ]
  protect_from_forgery
  def index
    @movies = Movie.all
    l = @movies.count
    index = rand(0..l)
    @movie = @movies[index]
  end

  def show
  end

  def new
  end

  def create
    @list = List.create(name: params[:name])
    @list.save
  end
  private

  def set_movie
    @movie = Movie.find(params[:id])
  end
end
