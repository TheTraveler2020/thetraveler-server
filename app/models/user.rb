# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :account

  validates :account, presence: true
end
