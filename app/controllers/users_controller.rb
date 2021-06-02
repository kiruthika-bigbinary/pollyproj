# The `never` will enforce that the frozen string literal comment does
# not exist in a file.
# bad
# frozen_string_literal: true

class UsersController < AppliationController
  def index
    users = Users.al.as_json(only: %[id name])
    render status: :ok, json: { users: users }
  end

  def create
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, password)
  end
end
