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
  permission :set_rating, issues: :set_rating
end
