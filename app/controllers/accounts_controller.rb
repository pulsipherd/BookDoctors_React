class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update]
  def index
    @books = current_user.books
  end

  def show
  end

  def new
    @books = Book.new
  end

  def edit
  end

  def create
    @books = current_user.books.new(book_params)
    if @books.save
      redirect_to accounts_path
    else
      render :new
    end
  end

  def update
    if @books.update(book_params)
      redirect_to books_path
    else
      render :new
    end
  end

  def destroy
    @book.destroy
  end

  private

  def set_account
    @account = current_user.accounts.find(params[:id])
  end

  def book_params
    params.require(:account).permit(:first_name, :last_name, :book)
  end
end
