class BooksController < ApplicationController

  def index
    @books = Book.all

    respond_to do |wants|
      wants.html
      wants.text
    end
  end

end
