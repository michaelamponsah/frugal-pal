class GroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user_categories = User.expense_categories(current_user.id)
    render
  end

  def show
    render
  end
end