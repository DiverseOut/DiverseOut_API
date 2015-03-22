require 'rails_helper'
require 'spec_helper'

RSpec.describe Company, :type => :model do
  it {should have_many :admins}
  it {should have_many :surveys}
  it {should have_many :responses}
end

RSpec.describe CompaniesController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "create" do
    ## need to create ADMIN before can create company
    let(:company_params) { attributes_for(:company) }
      context "#create" do
        it "creates a new company" do

          post :index

          expect {
            post :create, :company => company_params
          }.to change(Company, :count).by(1)
        end
      end
  end

  before :each do
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