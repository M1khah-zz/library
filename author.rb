class Author
  attr_accessor :name, :biography

  def initialize(params = {})
    @name = params[:name]
    @biography = params[:biography]
  end
end
