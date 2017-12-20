class CommentsController < ApplicationController

  def index
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new()
    end
  end

private


  def commentparams
    params.require(:comment).permit(:title, :message)
  end