# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable

  has_many :notebooks, inverse_of: :owner

  validates :first_name, presence: true
  validates :last_name, presence: true
end
