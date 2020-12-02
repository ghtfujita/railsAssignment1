class InquiriesController < ApplicationController
  def index
  end
  def new
    @inquiry = Inquiry.new
  end
  def create
    @inquiry = Inquiry.create(inquiry_params)
    if @inquiry.save
      redirect_to new_inquiry_path, notice: "Inquiry created."
    else
      flash[:notice] = "Content needs to be less than 140 chars."
      render action: :new
      # render :new, notice: "Content needs to be less than 140 chars."
    end
  end
  def inquiry_params
    params.require(:inquiry).permit(:name, :email, :content)
  end
end
