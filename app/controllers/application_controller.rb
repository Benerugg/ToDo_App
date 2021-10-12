class ApplicationController < ActionController::Base
  def set_search
    @q=TodoList.search(params[:q])
  end
end