require 'redmine'

# model patches
require_dependency 'issue_model_patch'

# controller patches
require_dependency 'issues_controller_patch'

# view patches
require_dependency 'hooks'

Redmine::Plugin.register :issue_rating do
  name 'Issue Rating plugin'
  author 'Stepan Golovko'
  description 'Plugin for issues rating'
  version '0.0.1'

  project_module :issue_rating do
    permission :issue_rating, { :issue_rating => [:set_rating] },:public => true
  end
end
