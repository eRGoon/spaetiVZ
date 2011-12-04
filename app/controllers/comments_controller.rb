class CommentsController < ApplicationController
  def index
    @comments = Comments.all
  end

  def show
    @comments = Comments.find(params[:id])
  end

  def new
    @comments = Comments.new
  end

  def create
    @comments = Comments.new(params[:comments])
    if @comments.save
      redirect_to @comments, :notice => "Successfully created comments."
    else
      render :action => 'new'
    end
  end

  def edit
    @comments = Comments.find(params[:id])
  end

  def update
    @comments = Comments.find(params[:id])
    if @comments.update_attributes(params[:comments])
      redirect_to @comments, :notice  => "Successfully updated comments."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @comments = Comments.find(params[:id])
    @comments.destroy
    redirect_to comments_url, :notice => "Successfully destroyed comments."
  end
end
