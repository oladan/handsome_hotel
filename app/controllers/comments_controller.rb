class CommentsController < ApplicationController
  def create
    @hotel = Hotel.find(params[:hotel_id])
    @comment = @hotel.comments.create(comment_params)
    redirect_to hotel_path(@hotel)
  end

  private
    def comment_params
      params.require(:comment).permit(:body, :commenter)
    end
end
