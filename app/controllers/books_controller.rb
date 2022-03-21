class BooksController < ApplicationController
    before_action :authenticate_user!
    def index
      @books = Book.all
    end
  
    def show
      @book = Book.find(params[:id])
      @article = @book.articles
    end
  
    def new
      @book = Book.new
    end
  
    def create
      @book = Book.new(book_params)
      @book.user_id = current_user.id
      if @book.save!
        redirect_to @book
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    def edit
      @book = Book.find(params[:id])
    end
  
    def update
      byebug
      @book = Book.find(params[:id])
      if @book.update!(book_params)
        redirect_to @book
      else
        render :edit, status: :unprocessable_entity
      end
    end
  
    def destroy
      @book = Book.find(params[:id])
      @book.destroy
  
      redirect_to root_path, status: :see_other
    end
  
    private
      def book_params
        params.require(:book).permit(:title, :description)
      end
  
end
