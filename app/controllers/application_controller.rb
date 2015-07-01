class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action only: [:edit, :update, :destroy] do
    sanity_checking(:id)
  end

  private

  def sanity_checking(param)
    if params[param].blank?
      flash[:error] = 'Some parameters were invalid.'
      return redirect_to root_path
    end
  end
end
