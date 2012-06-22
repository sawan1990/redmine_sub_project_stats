ActionController::Routing::Routes.draw do |map|
 map.get_stats 'get_stats', :controller => 'project_stats',:action =>'get_project_stats', :name_prefix => 'project_', :path_prefix => '/projects/:project_id'
 #map.search_stats 'project_stats/search', :controller => 'project_stats',:action =>'get_project_stats',:name_prefix => 'project_', :path_prefix => '/projects/:project_id'
end

