class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :engagements
  has_many :engaged_products, through: :engagements
  has_many :reviews

  validates :email, uniqueness: true
  validates :username, uniqueness: true, presence: true

  def email_required?
    false
  end
end
