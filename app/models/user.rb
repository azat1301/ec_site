class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :carts
  attribute :admin, :boolean, default: false
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
