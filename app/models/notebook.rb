# frozen_string_literal: true

class Notebook < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: :users_id

  validates :owner, presence: true
  validates :name, presence: true, length: { maximum: 50 }
end
