class ExpensesController < ApplicationController
  before_action :set_group

  def new
    @expense = @group.expenses.build
  end

  def create
    expense_params = params.require(:expense).permit(:name, :amount)
    name = expense_params[:name]
    amount = expense_params[:amount]

    @expense = @group.expenses.create({ name:, amount:, user_id: current_user.id })

    if @expense.save
      redirect_to @group, notice: 'Expense was successfully created.'
    else
      render :new
    end
  end

  private

  def set_group
    @group = Group.find(params[:group_id])
  end
end
