class CompaniesController < ApplicationController
  before_filter :cors

  def index
    companies = Company.all
    render :json => companies
  end

  def show
    company = company.find(params[:id])
    render :json => company
  end

  def create
    company = Company.create(company_params)


    if company.save
      render :json => admin
    else
      render :json => {:errors => company.errors.full_messages}
    end

  end

  def edit
    company = Company.find(params[:id])
    render :json => company
  end

  def update
    company = Company.find(params[:id])

    if company.update(company_params)
      redirect_to company
    else
      render 'edit'
    end
  end

  def destroy
    company = Company.find(params[:id])
    company.destroy
    flash[:success] = "Company Destroyed"
    redirect_to root_path
  end

  def upvote
  end

  def downvote
  end

  def cors
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, PATCH, DELETE, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'Origin Content-Type, Accept, Authorization, Token'
  end

  private
    def company_params
      params.require(:name).permit(:name, :street_num, :street_num_line_2, :street, :city, :country, :num_total_employees, :num_manager, :num_tech_workers, :num_non_tech_workers, :website_url)
    end

end
