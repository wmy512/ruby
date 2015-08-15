class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  skip_before_action :authorize

  def index
    if params[:set_locale]
      redirect_to store_url(locale: params[:set_locale])
    else
      @products = Product.order(:title)
    end
    @counter = increment_count
  end
  
  def increment_count
    session[:counter] ||= 0
    session[:counter] += 1
  end
end
