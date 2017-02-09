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
      expect(assigns(:resource)).to be_persisted
    end

    it "persists the Resource" do
      post :create, params: { resource: @new_resource_attributes }
    end

    it "does not create a new resource when validations are not met" do
      expect {
        post :create, params: { resource:
          {
            title: 'Resource title',
            url: 'somefakeresource.com',
            language: 'rubiee',
            tech: 'rails',
            free: true,
            description: 'this should fail validations since rubiee is not a whitelisted language.'
          }
        }
      }.to change(Resource, :count).by(0)
    end

    it "should redirect to resources#show" do
      post :create, params: { resource: @new_resource_attributes }

      saved_resource = Resource.where(@new_resource_attributes).first
      expect(response).to redirect_to(saved_resource)
    end
  end

  describe "SHOW action" do
    it "should render the resources#show action" do
      r1 = create(:resource)
      r2 = create(:resource)
      r3 = create(:resource)
      get :show, { id: r2.to_param }
      expect(assigns(:resource)).to eq(r2)
    end
  end

  describe "EDIT action" do
    it "renders the edit page" do
    end
  end

  describe "UPDATE action" do
  end

  describe "DESTROY action" do
  end
end
