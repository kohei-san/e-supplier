class PartsController < ApplicationController

  def index
    
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


  private

  def part_params
    params.require(:part).permit(:name, :info, :material_id, :processing_id, :deadline_id) #.merge(supplier_id: current_user.id)
    
  end
end
