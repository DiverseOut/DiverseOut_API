class ResponsesController < ApplicationController

  def index
    # responses = Response.where(company_id: params[:company_id])
    attributes = IndividualAttribute.all

    response_arr = []

    attributes.each do |attribute|
      response_arr << {
        attribute.attribute_name => Response.where(
          company_id: params[:company_id],
          individual_attribute_id: attribute.id
          ).length
      }
    end

    render :json => response_arr
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
