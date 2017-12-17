Redmine::Plugin.register :redmine_plugin_issue_analyze do
  name 'Redmine Plugin Issue Analyze plugin'
  author 'QHornet'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'https://github.com/Qhornet/redmine_plugin_issue_analyze'
  author_url 'https://github.com/Qhornet'

  project_module :issue_analyses do
    permission :issue_analyses, { :issue_analyses => 'index' }
  end
  menu :project_menu, :issue_analyses_menu,
    { :controller => 'issue_analyses', :action => 'index'},
    :caption => :issue_analyses_name,
    :after => :gantt,
    :param => :project_id
end
