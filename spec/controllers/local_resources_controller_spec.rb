require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe LocalResourcesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # LocalResource. As you add validations to LocalResource, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LocalResourcesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all local_resources as @local_resources" do
      local_resource = LocalResource.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:local_resources)).to eq([local_resource])
    end
  end

  describe "GET #show" do
    it "assigns the requested local_resource as @local_resource" do
      local_resource = LocalResource.create! valid_attributes
      get :show, {:id => local_resource.to_param}, valid_session
      expect(assigns(:local_resource)).to eq(local_resource)
    end
  end

  describe "GET #new" do
    it "assigns a new local_resource as @local_resource" do
      get :new, {}, valid_session
      expect(assigns(:local_resource)).to be_a_new(LocalResource)
    end
  end

  describe "GET #edit" do
    it "assigns the requested local_resource as @local_resource" do
      local_resource = LocalResource.create! valid_attributes
      get :edit, {:id => local_resource.to_param}, valid_session
      expect(assigns(:local_resource)).to eq(local_resource)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new LocalResource" do
        expect {
          post :create, {:local_resource => valid_attributes}, valid_session
        }.to change(LocalResource, :count).by(1)
      end

      it "assigns a newly created local_resource as @local_resource" do
        post :create, {:local_resource => valid_attributes}, valid_session
        expect(assigns(:local_resource)).to be_a(LocalResource)
        expect(assigns(:local_resource)).to be_persisted
      end

      it "redirects to the created local_resource" do
        post :create, {:local_resource => valid_attributes}, valid_session
        expect(response).to redirect_to(LocalResource.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved local_resource as @local_resource" do
        post :create, {:local_resource => invalid_attributes}, valid_session
        expect(assigns(:local_resource)).to be_a_new(LocalResource)
      end

      it "re-renders the 'new' template" do
        post :create, {:local_resource => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested local_resource" do
        local_resource = LocalResource.create! valid_attributes
        put :update, {:id => local_resource.to_param, :local_resource => new_attributes}, valid_session
        local_resource.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested local_resource as @local_resource" do
        local_resource = LocalResource.create! valid_attributes
        put :update, {:id => local_resource.to_param, :local_resource => valid_attributes}, valid_session
        expect(assigns(:local_resource)).to eq(local_resource)
      end

      it "redirects to the local_resource" do
        local_resource = LocalResource.create! valid_attributes
        put :update, {:id => local_resource.to_param, :local_resource => valid_attributes}, valid_session
        expect(response).to redirect_to(local_resource)
      end
    end

    context "with invalid params" do
      it "assigns the local_resource as @local_resource" do
        local_resource = LocalResource.create! valid_attributes
        put :update, {:id => local_resource.to_param, :local_resource => invalid_attributes}, valid_session
        expect(assigns(:local_resource)).to eq(local_resource)
      end

      it "re-renders the 'edit' template" do
        local_resource = LocalResource.create! valid_attributes
        put :update, {:id => local_resource.to_param, :local_resource => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested local_resource" do
      local_resource = LocalResource.create! valid_attributes
      expect {
        delete :destroy, {:id => local_resource.to_param}, valid_session
      }.to change(LocalResource, :count).by(-1)
    end

    it "redirects to the local_resources list" do
      local_resource = LocalResource.create! valid_attributes
      delete :destroy, {:id => local_resource.to_param}, valid_session
      expect(response).to redirect_to(local_resources_url)
    end
  end

end