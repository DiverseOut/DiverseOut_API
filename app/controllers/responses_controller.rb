class ResponsesController < ApplicationController
  before_filter :cors

  def create
    company_id = params[:company_id])
    employee_type_id = params[:employee_type_id]

    responses = params[:responses]

    # Will have to save multiple responses from one form submit. Make an array, then save new entry for each item in array.

    responses.each do |response|
      Response.new(
        company_id: company_id,
        employee_type_id: employee_type_id,
        attribute_id: attribute_id
      )
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
  def company_params
    params.require().permit()
  end
end
