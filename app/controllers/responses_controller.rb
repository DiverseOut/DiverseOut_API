class ResponsesController < ApplicationController

  def index
    # attributes = IndividualAttribute.all
    company_total_employees = Company.find(params[:company_id]).num_total_employees
    company_total_responses = Response.where(company_id: params[:company_id]).length

    response_arr = []
# Refactor!!
    AttributeGroup.all.each do |group|
      response_obj = {}
      attr_response_obj = {}
      response_obj["field_title"] = "#{group.group_name}"
      response_obj["responses"] = []

        group.individual_attributes.each do |attribute|
          response_obj["responses"] << {
            "attribute_title" => "#{attribute.attribute_name}",
            "value" => Response.where(
              company_id: params[:company_id],
              individual_attribute_id: attribute.id
            ).length
          }
        end
        response_arr << response_obj
      end

    render :json => {
      company_total_employees: company_total_employees,
      company_total_responses: company_total_responses,
      response_stats: response_arr
    }
  end

  def create
    response = Response.create(
      company_id: params[:company_id],
      individual_attribute_id: params[:attribute_id]
    )

    employee_type_ids = eval(params[:employee_types])

    employee_type_ids.each do |type_id|
      response.employee_types << EmployeeType.find(type_id)
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
