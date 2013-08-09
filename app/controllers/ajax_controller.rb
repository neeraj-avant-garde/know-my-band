class AjaxController < ApplicationController
  def users
    if params[:term]
      like= "%".concat(params[:term].concat("%"))
      users = User.where("first_name like ? OR last_name like ?", like, like)
    else
      users = User.all
    end
    list = users.map {|u| Hash[ id: u.id, label: u.first_name + ' ' + u.last_name, name: u.first_name + ' ' + u.last_name]}
    render json: list
  end
end
