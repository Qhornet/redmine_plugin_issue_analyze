class IssueAnalysesController < ApplicationController
  unloadable
  before_filter :find_project, :authorize, :only => :index

  def index
    issues = Issue.includes(:project).where(projects: { identifier: params[:project_id]})
    issues = issues.includes(:status).where(issue_statuses: { is_closed: false })

    data = { max_left_days: 0, count: {} }
    issues.each do |issue|
      left_days = (Date.today - issue.updated_on.to_date).to_i
      data[:max_left_days] = left_days if left_days > data[:max_left_days]

      data[:count][left_days] ||= 0
      data[:count][left_days] += 1
    end

    gon.leftDays = data
  end
  
  def left_issues
    day = Date.today - params[:count].to_i
    issues = Issue.includes(:project).where(projects: { identifier: params[:project_id]})
    issues = issues.includes(:status).where(issue_statuses: { is_closed: false })
    issues = issues.where(updated_on: day...(day + 1))
    render json: issues, status: 200
  end

  private

  def find_project
    @project = Project.find(params[:project_id])
  end
end
