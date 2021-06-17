class PartsController < ApplicationController
  before_action :authenticate_buyer!, except: [:index, :show, :mail, :send_mail]
  before_action :find_by_id, only: [:show, :edit, :update, :destroy, :mail, :send_mail]
  before_action :owner_only, only: [:edit, :update, :destroy]

  def index
    @parts = Part.order("created_at DESC")
    @buyers = Buyer.order("created_at DESC")
    @suppliers = Supplier.order("created_at DESC")
  end

  def show
  end

  def new
    @part = Part.new
  end

  def create
    @part = Part.new(part_params)
    if @part.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @part.update(part_params)
      redirect_to root_path
    end
  end

  def destroy
    if @part.destroy
      redirect_to root_path
    end
  end

  def mail
  end

  def send_mail
    supplier = current_supplier
    buyer = @part.buyer
    SendEmail.test_email
    redirect_to root_path
  end

  private

  def find_by_id
    @part = Part.find(params[:id])
  end

  def owner_only
    if current_buyer.id != @part.buyer_id
      redirect_to root_path
    end
  end

  def part_params
    params.require(:part).permit(:name, :info, :material_id, :processing_id, :deadline_id, :image).merge(buyer_id: current_buyer.id)
    
  end
end
