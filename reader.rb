class Reader
  attr_accessor :name, :email, :city, :street, :house

  def initialize(params = {})
    @name = params[:name]
    @email = params[:email]
    @city = params[:city]
    @street = params[:street]
    @house = params[:house]
  end
end
