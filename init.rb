require 'redmine'

Redmine::Plugin.register :redmine_sub_project_stats do
  name 'Redmine Stats plugin'
  author 'Sawan Shah'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  project_module :get_subproject_stats do
    permission :get_subproject_stats, :project_stats => :get_project_stats
  end
permission :view_subproject_stats, :project_stats => :get_project_stats
  menu :project_menu, :sub_project_stats, { :controller => 'project_stats', :action => 'get_project_stats' }, :caption => 'Sub Project Stats',  :before => :settings, :param => :project_id, :if =>Proc.new {|p|  p.children.any?}
 end
