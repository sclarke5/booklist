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
        # .map do |i|
        #
        #     title: i.title
        #     author: i.author
        #
        # end
      end

    end
  end

end
