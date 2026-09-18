class Admin::UsersController < ApplicationController
  def index
    @users = User.all
    authorize User
  end
end
