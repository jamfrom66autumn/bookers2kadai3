class BooksController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_book,only: [:edit]

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      flash[:notice] = "User was successfully create"
      redirect_to @book
    else
      @new_user = current_user
      @books = Book.all
      render ("books/index")
    end
  end

  def index
    @books = Book.all
    @new_user = current_user
    @book = Book.new
  end

  def show
    @new_book = Book.new
    @book = Book.find(params[:id])
    @book_comment = BookComment.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "Book was successfully update"
      redirect_to @book
    else
      flash[:alert] = "Updating error"
      render 'edit'
    end

  end


  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  def correct_book
        @book = Book.find(params[:id])
    unless @book.user.id == current_user.id
      redirect_to books_path
    end
  end


  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
