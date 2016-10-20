class UsersController < ApplicationController
  before_action :current_user, only:[:edit, :update, :destroy]
  before_action :require_login, except: [:new, :create]
  before_action :require_correct_user, only: [:show, :edit, :update, :destroy]

  def create
  	user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], location: params[:location], state: params[:state], password: params[:password], password_confirmation: params[:password_confirmation])
  	if user.save
  		session[:user_id] = user.id
  		redirect_to "/users/#{user.id}"
  	else
  		flash[:errors] = user.errors.full_messages
  	 	redirect_to '/users/new'
	 end
  end
end
