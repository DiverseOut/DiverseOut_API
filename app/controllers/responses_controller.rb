require_relative "../helpers/responses_helper.rb"

class ResponsesController < ApplicationController
  include ResponsesHelper

  def index

# REFACTOR!!!
    response_arr = []
    company_total_responses = Response.where(company_id: params[:company_id]).length

    AttributeGroup.all.each do |group|

      response_obj = {}
      attr_response_obj = {}
      response_obj["field_title"] = "#{group.group_name}"
      response_obj["responses"] = []

        attribute_responses = Response.joins(:individual_attribute=>:attribute_group).where(:attribute_groups=>{:id=>group.id}).length

        group.individual_attributes.each do |attribute|

          value = Response.where(
            company_id: params[:company_id],
            individual_attribute_id: attribute.id
          ).length

          response_obj["responses"] << {
            "attribute_title" => "#{attribute.attribute_name}",
            "value" => value,
            "percentage" => percentage(value, attribute_responses)
          }
        end
        response_arr << response_obj
      end

    render :json => {
      company_info: Company.find(params[:company_id]),
      company_total_responses: company_total_responses,
      response_stats: response_arr
    }
  end

  def create
    response = Response.create(
      company_id: params[:company_id],
      individual_attribute_id: params[:attribute_id]
    )

    employee_type_ids = params[:employee_types]

    if employee_type_ids != nil
      employee_type_ids.each do |type_id|
        response.employee_types << EmployeeType.find(type_id)
      end
    end

    if response.save
      render :json => response
    else
      render :json => {:errors => response.errors.full_messages}
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end


# private
#   def company_params
#     params.require().permit()
#   end
end
