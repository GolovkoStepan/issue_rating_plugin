module IssueRating
  class Hooks < Redmine::Hook::ViewListener
    # append js src to main layout
    render_on :view_layouts_base_html_head, partial: 'layouts/add_assets'
    # append rating context to issue
    render_on :view_issues_show_description_bottom, partial: 'issues/issue_rating'
  end
end