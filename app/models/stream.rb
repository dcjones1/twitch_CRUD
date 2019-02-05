class Stream < ApplicationRecord
  belongs_to :user
  accepts_nested_attributes_for :user

  validates :title, presence: true
  validates :views, presence: true
  validates :views, numericality: { greater_than: 0}
end
