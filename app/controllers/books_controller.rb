class BooksController < ApplicationController
  def new
  end

  #一覧表示アクション
  def index
    @book = Book.new
    @books = Book.all
  end

  #詳細画面アクション
  def show
    @book = Book.find(params[:id])
  end

  #編集画面アクション
  def edit
    @book = Book.find(params[:id])
  end

  #データ作成
  def create
    @book = Book.new(book_params)
    if @book.save  #バリデーションチェック
       flash[:notice] = "Book was successfully created."
       redirect_to book_path(@book.id)
    else 
      @books = Book.all
      flash.now[:alert] = "Book was error created."
      render :index, status: :unprocessable_entity
    end
  end

  #データ更新
  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      flash[:notice] = "Book was successfully updated."
      redirect_to book_path(book.id)
    end
  end

  #データ削除
  def destroy
    book = Book.find(params[:id])
    if book.destroy
      flash[:notice] = "Book was successfully destroyed."
      redirect_to "/books"
    end
    
  end

  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
