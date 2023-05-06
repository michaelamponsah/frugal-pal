class GroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :get_group, only: [:show]

  def index
    @user_categories = User.expense_categories(current_user.id)
    render
  end

  def show
    @category_expenses = Expense.where(user_id: current_user.id).joins(:groups).where(groups: { id: @group.id })

    render
  end

  def new
    @group = Group.new
  end

  def create
    @new_category = Group.new(req_params)
    @new_category.user_id = current_user.id

    if @new_category.save
      redirect_to groups_path, notice: "#{@new_category.name} Category has been created successfully"
    else
      render :new
    end
  end

  private

  def req_params
    params.require(:group).permit(:name, :icon)
  end

  def get_group
    @group = Group.find(params[:id])
  end
end
