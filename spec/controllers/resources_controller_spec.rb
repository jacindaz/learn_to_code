require 'rails_helper'

describe ResourcesController do
  describe "GET index" do
    it "assigns @resources" do
      r1 = Resource.create(title: 'Resource title', url: 'www.someresource.com', language: 'ruby', free: true)
      r2 = Resource.create(title: 'Resource title 2', url: 'www.resourceduex.com', language: 'python', free: false)

      get :index

      expect(assigns(:resources)).to include(r1)
      expect(assigns(:resources)).to include(r2)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end
