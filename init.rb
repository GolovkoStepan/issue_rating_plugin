require 'redmine'

require_dependency 'issue_patch'

Redmine::Plugin.register :issue_rating do
  name 'Issue Rating plugin'
  author 'Stepan Golovko'
  description 'Plugin for issues rating'
  version '0.0.1'
end
