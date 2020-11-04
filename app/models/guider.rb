# frozen_string_literal: true

class Guider < ApplicationRecord
  belongs_to :account

  validates :account, presence: true
end
