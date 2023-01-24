class User < ApplicationRecord
  validates :email, :password, format: {
    with: /\A\S.{0,}\S\z/,
    message: ': Space cant be in begin or end'
  }
  validates :password, format: {
    with: /\d/,
    message: ': Password must include at least 1 digit'
  }
  validates :password, format: {
    with: /[a-z]/,
    message: ': Password must include at least lowercase symbol'
  }
  validates :password, format: {
    with: /[A-Z]/,
    message: ': Password must include at least upcase synbol'
  }
  validates_presence_of :email, :password
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
