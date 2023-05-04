class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :groups
  has_many :expenses

  validates :name, presence: true, length: {minimum: 2, maximum: 50}

  def user_expenses
    Expense.where(user_id: id)
  end

  def expense_categories
    Group.where(user_id: id)
  end
end
