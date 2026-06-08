class BooksController < ApplicationController
  #新規登録アクション
  def new
  end

  #一覧表示アクション
  def index
    @books = Book.all
  end

  #詳細画面アクション
  def show
    @book = Book.find(params[:id])
  end

  #編集画面アクション
  def edit
  end

  #データ作成
  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to book_path(@book.id)
    # if @book.save  #データ入力チェック
    #   flash[:notice] = "投稿に成功しました"
    #   redirect_to books_path(@book.id)
    # else 
    #   flash.now[:alert] = "投稿に失敗しました"
    #   render :index, status: :unprocessable_entity
    # end
  end

  #データ削除
  def destroy
  end

  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
