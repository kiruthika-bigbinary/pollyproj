# The `never` will enforce that the frozen string literal comment does
# not exist in a file.
# bad
# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 35 }
  has_many :polls, dependent: :destroy
end
