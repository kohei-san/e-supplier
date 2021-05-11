class BuyersController < ApplicationController
  def show
    @buyer = Buyer.find(params[:id])
    gon.buyer = @buyer
  end
end
