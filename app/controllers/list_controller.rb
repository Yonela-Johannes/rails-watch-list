class ListController < ApplicationController
  before_action :set_list, only: %i[ show ]

  def index
    @list = List.all
  end

  def show

  end

  def edit
  end

  def update
  end

  def destroy
  end

  def set_list
    @list = List.find(params[:id])
  end

end
