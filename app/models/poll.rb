# The `never` will enforce that the frozen string literal comment does
# not exist in a file.
# bad
# frozen_string_literal: true

class Poll < ApplicationRecord
  has_many :option
  belongs_to :user
end
