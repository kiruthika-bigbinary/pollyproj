# The `never` will enforce that the frozen string literal comment does
# not exist in a file.
# bad
# frozen_string_literal: true

module ApplicationCable
  class Channel < ActionCable::Channel::Base
  end
end
