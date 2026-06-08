class BooksController < ApplicationController
  #新規登録アクション
  def new
  end

  #一覧表示アクション
  def index
    @book = Book.new
  end

  #詳細画面アクション
  def show
  end

  #編集画面アクション
  def edit
  end

  #データ更新
  def create
    @book = Book.new(list_params)
  end

  #データ削除
  def destroy
  end

end
