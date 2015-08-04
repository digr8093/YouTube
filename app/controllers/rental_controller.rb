class RentalController < ApplicationController
  def index

    @products = Product.page(@page).order(:updated_at=>:desc)
  end

  def show
    @product = Product.find( params['id'] )
  end
end
