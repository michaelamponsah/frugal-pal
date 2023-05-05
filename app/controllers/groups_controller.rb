class GroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user_categories = User.expense_categories(current_user.id)
    render
  end

  def show
    group_id = params[:id].to_i
    print(group_id)
    @category_expenses = Expense.where(user_id: current_user.id).joins(:groups).where(groups: { id: group_id })

    render
  end
end