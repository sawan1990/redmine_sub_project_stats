require 'redmine'

Redmine::Plugin.register :redmine_sub_project_stats do
  name 'Redmine Stats plugin'
  author 'Sawan Shah'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  project_module :get_subproject_stats do
    permission :get_subproject_stats, :project_stats => :get_project_stats
  end
  menu :project_menu, :project_stats, { :controller => 'project_stats', :action => 'get_project_stats' }, :caption => 'Project Stats',  :after => :settings, :param => :project_id
 end
