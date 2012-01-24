class CommentsController < ApplicationController
   def create
    _sID = params[:sID]
    @comment = Comment.new(params[:comment])
    @comment.sID = _sID
    if @comment.save
      flash[:notice] = "Kommentar erstellt."
      @comments = Comment.find(:all, :conditions => {:sID => _sID})
      @comment = Comment.new
      @spaeti = Spaeti.find(params[:sID])
    end
  end

   def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    @comments = Comment.find(:all, :conditions => {:sID => _sID})
  end
end
