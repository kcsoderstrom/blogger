class CommentsController < ApplicationController
  def index
    @comments = Comments.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]
    @comment.save
    flash.notice = "Comment on '#{@comment.article.title}' Posted!"
    redirect_to article_path(@comment.article)
  end

  def comment_params
    params.require(:comment).permit(:author_name, :body)
  end

  def destroy
    @comment = Comment.find(params[:id])
    flash.notice = "Comment on '#{@comment.article.title}' Removed!"
    @comment.destroy
    redirect_to articles_path
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)

    flash.notice = "Comment on '#{@comment.article.title}' Updated!"

    redirect_to article_path(@comment.article)
  end
end
