class DocsController < ApplicationController
  before_action :find_doc , only: [:show,:edit,:destroy]


  def index
    @docs = Doc.all.order('created_at Desc ')
  end

  def new
    @doc = Doc.new
  end

  def create
    @doc = Doc.new(doc_params)
    if @doc.save
      redirect_to @doc
    else
      render 'new'
    end
  end

  def show
    @doc = Doc.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_doc
  end

  def doc_params
    params.require(:doc).permit(:title,:body)
  end

end
