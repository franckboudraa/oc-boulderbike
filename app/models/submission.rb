class Submission < ApplicationRecord
  validates :first_name, presence: true, length: {in: 2..30}, format: { with: /\A[a-zA-Z]+\z/ }
  validates :last_name, presence: true, length: {in: 2..30}, format: { with: /\A[a-zA-Z]+\z/ }
  validates :email, presence: true, length: {in: 5..40}, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i }
  validates :slogan, presence: true, length: {in: 10..50}
end
