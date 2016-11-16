class Book
  attr_accessor :title, :author

  def initialize(params = {})
    @title = params[:title]
    @author = params[:author]
  end
end
