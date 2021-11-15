class BooksController < ApplicationController
  
  def index
    @books = Book.all
    @book = Book.new
  end

  def show
  	@book = Book.find(params[:id])
  end

  def create
    @books = Book.all
    @book = Book.new(book_params)
      if @book.save
        flash[:notice] = "You have successfully submitted."
        redirect_to book_path(@book.id)
      else
        render :index
      end
  end

  def edit
  	@book = Book.find(params[:id])
  end

  def update
  	@book = Book.find(params[:id])
  	  if @book.update(book_params)
  	    flash[:notice] = "You have successfully updated."
  	    redirect_to book_path(@book)
  	  else
  	    render :edit
  	  end
  end


  def destroy
  	book = Book.find(params[:id])
  	book.destroy
  	flash[:notice] = "You have successfully deleted."
  	redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end