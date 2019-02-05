class User < ApplicationRecord
  has_many :streams
  accepts_nested_attributes_for :streams

  validates :username, presence: true, uniqueness: true
  validates :popularity, presence: true, numericality: { greater_than: 0, less_than_or_equal_to: 10}
  validates :streaming, inclusion: { in: [true, false], message: "Must be true or false" }
end
