class SecretsController < ApplicationController

  before_action :require_login

  def show
  end

  def require_login
    return redirect_to(controller: 'sessions', action: 'new') if !session.include? :name
  end

end
