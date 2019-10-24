require_dependency 'issue'

module IssueModelPatch
  def self.included(base)
    base.class_eval do
      validates :rating, numericality: {
          allow_nil: true,
          only_integer: true,
          greater_than: 0,
          less_than: 6,
      }
    end
  end
end

Issue.send(:include, IssueModelPatch)