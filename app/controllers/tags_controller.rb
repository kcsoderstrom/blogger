class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def create
    @tag = Tag.new(tag_params)
    @tag.save
  end

end
