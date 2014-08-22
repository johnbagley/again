class ShoutsController < ApplicationController
  def show
    @shout = Shout.find(params[:id])
  end

  def create
    shout = current_user.shouts.build(shout_params)
    shout.save
    redirect_to dashboard_path
  end

  def shout_params
    params.require(:shout).permit(:body)
  end
end
