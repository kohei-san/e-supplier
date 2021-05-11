class SuppliersController < ApplicationController
  def show
    @supplier = Supplier.find(params[:id])
    gon.supplier = @supplier
  end
end
