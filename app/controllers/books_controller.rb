class BooksController < ApplicationController

  def index
    @books = Book.all

    respond_to do |wants|
      wants.html
      wants.text

      wants.csv do
        render plain: Book.generate_csv(@books)
      end

      wants.json do
        render json: @books.to_json
      end
    end
  end

end
