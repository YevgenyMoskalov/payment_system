class AccountController < ApplicationController
  before_action :authenticate_user!
  def index; end

  private

  def authenticate_user!; end
end
