class UsersController < ApplicationController
  def index
    User.create(id: 7) if not User.all.find_by(id: 7)
    user = User.new(id: 8)
    user.save  if not User.all.find_by(id: 8)
    @user = user
    @users = User.all

    @user_six_posts = @users.find_by(id: 6).posts
  end
end
