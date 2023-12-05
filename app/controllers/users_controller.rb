class UsersController < ApplicationController
  def index
    matching_users = User.all

    @list_of_users = matching_users.order({ :created_at => :desc })

    render({ :template => "users/index" })
  end

  def show
    the_user = params.fetch("username")

    matching_users = User.where({ :username => the_user })

    @the_user = matching_users.at(0)

    render({ :template => "users/show" })
  end

end
