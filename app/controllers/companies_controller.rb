class CompaniesController < ApplicationController

  def index
    companies = Company.all
    render :json => companies
  end

  def show
    company = Company.find(params[:id])
    render :json => {company: company, surveys: company.surveys}
  end

  def create
    company = Company.create(company_params)

    if company.save
      render :json => company
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
    company = Company.find(params[:id])
    company.upvote
  end

  def downvote
    company = Company.find(params[:id])
    company.downvote
  end

  private
    def company_params
      params.permit(:name, :street_num, :street_num_line_2, :street, :city, :state, :country, :num_total_employees, :num_manager, :num_tech_workers, :num_non_tech_workers, :website_url, :thumbnail_url)
    end

end
