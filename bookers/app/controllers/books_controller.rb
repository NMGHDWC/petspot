class BooksController < ApplicationController

  def top
  end

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    list = List.new(list_params)
    list.save
    redirect_to '/books'
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to books_path(list.id)
  end

  private
    def list_params
      params.permit(:title, :body)
    end

end
