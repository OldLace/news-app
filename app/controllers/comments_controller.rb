class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def show

  end

  def create
    @comment = Comment.new('commentparams')
    if @comment.save
      redirect_to root_path
    else
      render 'new'
    end
    end
  end

private


  def commentparams
    params.require(:comment).permit(:title, :message)
  end