class ProjectStatsController < ApplicationController


  def get_project_stats
    @parent_project = Project.find(params[:project_id])
    @project = @parent_project
    @end_date = DateTime.civil(params[:end_date][:year].to_i, params[:end_date][:month].to_i, params[:end_date][:day].to_i , params[:end_date][:hour].to_i , params[:end_date][:minute].to_i ) rescue nil || Time.now.to_datetime
    @start_date = DateTime.civil(params[:start_date][:year].to_i, params[:start_date][:month].to_i, params[:start_date][:day].to_i , params[:start_date][:hour].to_i , params[:start_date][:minute].to_i ) rescue nil || (Time.now - 7.days).to_datetime
    @projects = @parent_project.children
    @projects.each do |project|
      @projects = @projects + (project.children rescue nil)
    end
    
  end


end
