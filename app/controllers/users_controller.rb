class UsersController < ApplicationController
  before_action :authenticate_user!, :only => [:index]
  def index
    dfasdfas
  end
end
