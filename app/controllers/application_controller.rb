class ApplicationController < ActionController::Base
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path, notice: "書籍を削除しました。"
  end
end
