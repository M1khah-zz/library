class Order
  attr_accessor :book, :reader, :date

  def initialize(params = {})
    @book = params[:book]
    @reader = params[:reader]
    @date = params[:date] 
  end
end
