class SearchsController < ApplicationController
  protect_from_forgery with: :null_session
  layout false
  before_action :check_session , only: [:index]

  def index
    @posts = Post.where("title LIKE ?", "%#{params[:search]}%").order('created_at DESC').page(params[:page] || 1 ).per(4)
    # binding.pry
  end
end
