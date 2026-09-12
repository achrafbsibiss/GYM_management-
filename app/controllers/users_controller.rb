class UsersController < ApplicationController
  before_action :set_user, only: [ :show, :edit, :update, :destroy ]

  def index
    @user = User.all
  end

  def edit;end

  def show;end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path
    else
      render "new"
    end
  end

  def update
    if @user.update(user_params)
       redirect_to users_path
    else
        render "edit"
    end
  end

  def destroy
    @user.destroy
  end

  private

  def set_user
    @user = User.find[:id]
  end

  def user_params
    params.expect(user: [ :first_name,
                          :last_name,
                          :role,
                          :addresse,
                          :email,
                          :birthday
                        ])
  end
end
