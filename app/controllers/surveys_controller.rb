class SurveysController < ApplicationController

  def index
    surveys = Survey.all
    render :json => surveys
  end

  def show
    survey = Survey.find(params[:id])

    attribute_groups = []
    survey.attribute_groups.each do |group|
      attribute_groups << {group: group, individual_attributes: group.individual_attributes}
    end

    survey_obj = {
      company_info: Company.find(params[:company_id]),
      employee_types: EmployeeType.all,
      attribute_groups: attribute_groups
    }

    render :json => survey_obj
  end

  def create
    survey = Survey.create(name: params[:name], company_id: params[:company_id], secret_login_key: params[:secret_login])

    attribute_group_ids = eval(params[:attribute_groups])

    attribute_group_ids.each do |group_id|
      survey.attribute_groups << AttributeGroup.find(group_id)
    end

    if survey.save
      render :json => survey
    else
      render :json => {:errors => survey.errors.full_messages}
    end

  end

  def edit
    survey = Survey.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
    def attr_groups
      params.permit(:attribute_groups => [])
    end
end
