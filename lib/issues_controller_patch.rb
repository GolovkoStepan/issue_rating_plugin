require_dependency 'issues_controller'

module IssuesControllerPatch
  def self.included(base)
    base.send(:include, InstanceMethods)
  end

  module InstanceMethods
    def set_rating
      @issue = Issue.find(params[:id])

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
end

IssuesController.send(:include, IssuesControllerPatch)