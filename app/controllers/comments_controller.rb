class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def create
    @case = Comment.new(comment_params)
    @case.author = current_user
    @case.commentable = find_commentable
    respond_to do |format|
      if @case.save
        format.html { redirect_back fallback_location: root_path, notice: 'Komentarz został dodany.' }
      else
        binding.pry
        format.html { redirect_back fallback_location: root_path , alert: 'Błąd!' }
      end
    end
  end

  def destroy
    comment = current_user.comments.find(@comment.id)
    comment.destroy
    redirect_back fallback_location: root_path, notice: 'Komentarz został usunięty.'
  end

  private
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:text, :commentable_id, :commentable_type)
    end

    def find_commentable
      params.each do |name, value|
        if name =~ /(.+)_id$/ && name != 'comment_id'
          return $1.classify.constantize.find(value)
        end
      end
      nil
    end
end
