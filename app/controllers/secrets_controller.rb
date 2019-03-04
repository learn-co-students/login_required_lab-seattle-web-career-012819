class SecretsController < ApplicationController
  before_action :require_login
  
  def index
    redirect_to new_session_path
  end

  def show
    render plain: "I don't know what the fucking secret it"
  end
  
  private
  def require_login
    # byebug
    redirect_to new_session_path unless session.include? :name
    end

    def secrets_params
      byebug
      params.require(:name)
    end
end