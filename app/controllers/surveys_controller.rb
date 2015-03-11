class SurveysController < ApplicationController
  before_filter :cors

  def show
  end

  def create
    survey = Survey.create(survey_params)
    attribute_group_ids = params[:attribute_groups]

    attribute_group_ids.each do |group_id|
      survey.attribute_groups << AttributeGroup.find(group_id)
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  def cors
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, PATCH, DELETE, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'Origin Content-Type, Accept, Authorization, Token'
  end

  private
    def survey_params
      params.require(:company_id).permit(:secret_login)
    end
end
