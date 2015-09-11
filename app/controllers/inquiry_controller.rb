class InquiryController < ApplicationController
  
  before_filter :authenticate_user!
  def new
    @inquiry = Inquiry.new
    
  end

  def confirm
    @inquiry = Inquiry.new(create_params)
    if @inquiry.valid?
      render action: 'confirm'
    else
      render action: 'new'
    end
  end

  def thanks
    @inquiry = Inquiry.create(create_params)
  end
  
  private
    
    def create_params
      params.require(:inquiry).permit(:name, :email, :message)
  end
end
