class User < ApplicationRecord
  has_many :groups
  has_many :expenses

  def user_expenses
    Expense.where(user_id: id)
  end

  def expense_categories
    Group.where(user_id: id)
  end
end
