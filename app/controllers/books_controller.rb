class BooksController < ApplicationController

  def new
    @book = Book.new

  end


  def index
     @books = Book.all
     @book = Book.new
  end


    def show
      @book = Book.find(params[:id])
    end



  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render :index
    end
  end




   def edit
      @book = Book.find(params[:id])

   end


  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "Book was successfully updated."
      redirect_to book_path(@book.id)
    else
     
    render :edit
    end
  end

def destroy
  @book = Book.find(params[:id])
# 削除リンクから飛んできたときのparamsに格納されたidを元に、該当する投稿データを探して、変数に代入する
  if @book.destroy
    redirect_to request.referer, notice: "Book was successfully destroyed."
  else
    flash.now[:danger] = "削除に失敗しました"
    render 'index'
  end
end




 private
     def book_params
         params.require(:book).permit(:title,:body)
     end
end