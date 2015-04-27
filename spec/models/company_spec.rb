require 'rails_helper'
require 'spec_helper'

RSpec.describe Company, :type => :model do
  it {should have_many :admins}
  it {should have_many :surveys}
  it {should have_many :responses}

  describe "Company" do

    before :all do
      Company.delete_all
      @company = create(:company)
    end

    it "has a name field" do
      expect(@company.name).to eq("LinkedIn")
    end

    it "has a street num field" do
      expect(@company.street_num).to eq(1234)
    end

    it "has a street field" do
      expect(@company.street).to eq("LinkedIn Street")
    end

    it "has a city field" do
      expect(@company.city).to eq("San Francisco")
    end

    it "has a country field" do
      expect(@company.country).to eq("USA")
    end

    it "has a website url field" do
      expect(@company.website_url).to eq("www.LinkedIn.com")
    end

  end

end

RSpec.describe CompaniesController, :type => :controller do

  before(:example) do
    @company = create(:company)
    post :create, :company => company_params, :admin_id => 1
  end

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET show" do
    it "shows a specific company" do
      @company = create(:company)
      get :show, :id => @company.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST create" do
    let(:company_params) { attributes_for(:company) }
      it "creates a new company" do
        post :create, :company => company_params, :admin_id => 1 ## need to have ADMIN before can create company
        expect(Company.count).to eq(2)
      end
  end

  describe "GET edit" do
    it "gets company to edit" do
      get :edit, :id => @company.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "PUT update" do

    it "updates company info" do
      @company = create(:company)
      company_params = {:street => "Folsom Street"}
      put :update, :id => @company.id, :company => company_params, :admin_id => 1
      expect(Company.find(@company.id).street).to eq("Folsom Street")
    end
  end

  describe "DELETE destroy" do
    it "destroys company" do
      @company = create(:company)
      put :destroy, :id => @company.id, :admin_id => 1
      expect(Company.count).to eq(1)
    end
  end

end