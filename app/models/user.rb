class User < ApplicationRecord
  has_many :streams
  accepts_nested_attributes_for :streams
end
