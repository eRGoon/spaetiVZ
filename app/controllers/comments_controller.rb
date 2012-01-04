class CommentsController < ApplicationController
  #def index
    #@comments = Comment.all
  #end

  #def show
    #@comment = Comment.find(params[:id])
  #end

  #def new
    #@comments = Comment.new
  #end

  def create
    _sID = params[:sID]
    @comment = Comment.new(params[:comment])
    @comment.sID = _sID
    if @comment.save
      flash[:notice] = "Kommentar erstellt."
      @comments = Comment.find(:all, :conditions => {:sID => _sID})
    end
  end

  #def edit
    #@comment = Comment.find(params[:id])
  #end

  #def update
    #@comment = Comment.find(params[:id])
    #if @comment.update_attributes(params[:comment])
      #redirect_to @comments, :notice  => "Successfully updated comments."
      #@comments = Comment.all
    #end
  #end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    @comments = Comment.find(:all, :conditions => {:sID => _sID})
  end
end
