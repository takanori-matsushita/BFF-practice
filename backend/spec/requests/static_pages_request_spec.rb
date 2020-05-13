require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  
  before do
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  describe "GET root" do
    it "returns http success" do
      get "/api/v1"
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['title']).to eq("#{@base_title}")
    end
  end

  describe "GET /home" do
    it "returns http success" do
      get "/api/v1/static_pages/home"
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['title']).to eq("#{@base_title}")
    end
  end
  
  describe "GET /help" do
    it "returns http success" do
      get "/api/v1/static_pages/help"
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['title']).to eq("Help | #{@base_title}")
    end
  end
  
  describe "GET /about" do
    it "returns http success" do
      get "/api/v1/static_pages/about"
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['title']).to eq("About | #{@base_title}")
    end
  end
  
  describe "GET /contact" do
    it "returns http success" do
      get "/api/v1/static_pages/contact"
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['title']).to eq("Contact | #{@base_title}")
    end
  end
  
end
