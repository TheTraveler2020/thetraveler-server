# frozen_string_literal: true

class Account < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User

  belongs_to :guider, optional: true
  belongs_to :user, optional: true

  after_create :create_user

  def create_user
    user = User.create(account: self)
    update(user_id: user.id)
  end
end
