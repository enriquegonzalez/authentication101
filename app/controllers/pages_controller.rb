class PagesController < ApplicationController

  def login
    user = User.where('LOWER(name) = ?', params[:name].downcase).first
    if user
      redirect_to pages_home_path(:user_id => user.id)
    else
      redirect_to pages_home_path, :notice => "I don't know you!"
    end
  end
  
  def home
    @user_id = params[:user_id]
  end

  def restaurants
    @user_id = params[:user_id]
    if @user_id.present?
      @restaurants = User.find(@user_id).restaurants
    else
      redirect_to pages_home_url, :notice => "You must login first."
    end
  end

  def create_restaurant
    @user_id = params[:user_id]
    if @user_id.present?
      Restaurant.create user_id: params[:user_id], name: params[:name]
      redirect_to pages_restaurants_url(user_id: @user_id), notice: 'Restaurant added!'
    else
      redirect_to pages_home_path, :notice => "You must login first."
    end
    
  end
  
  def activities
    @user_id = params[:user_id]
    if @user_id.present?
      @activities = User.find(@user_id).activities
    else
      redirect_to pages_home_path, :notice => "You must login first."
    end
  end
end
