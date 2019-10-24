class RatingController < ApplicationController
  def set_rating
    @issue = Issue.find(params[:issue_id])

    respond_to do |format|
      @issue.rating = params[:rating]
      if @issue.save
        format.json { render json: { status: "ok" } }
      else
        format.json { render json: @issue.errors }
      end
    end
  end
end