class ResponsesController < ApplicationController

  def create
    response = Response.create(
      company_id: params[:company_id],
      employee_type_id: params[:employee_type_id],
      attribute_id: attribute_id
    )
    render :json => response
  end

  end

  def edit
  end

  def update
  end

  def destroy
  end


private
  def company_params
    params.require().permit()
  end
end
