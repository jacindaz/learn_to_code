require 'rails_helper'

describe ResourcesController, type: :controller do
  describe "GET index" do
    it "assigns @resources" do
      r1 = FactoryGirl.create(:resource)
      r2 = FactoryGirl.create(:resource)

      get :index

      expect(assigns(:resources)).to include(r1)
      expect(assigns(:resources)).to include(r2)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "NEW action" do
    it "renders the resources#new action" do
      get :new
      expect(response).to render_template(:new)
    end
  end

  describe "CREATE action" do
    before(:each) do
      @new_resource_attributes = FactoryGirl.attributes_for(:resource)
    end

    it "creates a new resource when validations are met" do
      expect {
        post :create, params: { resource: @new_resource_attributes }
      }.to change(Resource, :count).by(1)
    end

    it "does not create a new resource when validations are not met" do
    end
  end
end
