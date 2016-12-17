class SearchesController < ApplicationController
  def show
    @movie_to_find = Search.last.text
  end

  def new
    @search = Search.new
  end

  def create
    @search = Search.new(search_params)

    if @search.save
      redirect_to '/searches/show'
    else
      render :new
    end
  end

  private
  def search_params
    params.require(:search).permit(:text)
  end
end
