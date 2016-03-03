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

RSpec.describe UndergraduateAdvisementsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # UndergraduateAdvisement. As you add validations to UndergraduateAdvisement, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UndergraduateAdvisementsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all undergraduate_advisements as @undergraduate_advisements" do
      undergraduate_advisement = UndergraduateAdvisement.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:undergraduate_advisements)).to eq([undergraduate_advisement])
    end
  end

  describe "GET #show" do
    it "assigns the requested undergraduate_advisement as @undergraduate_advisement" do
      undergraduate_advisement = UndergraduateAdvisement.create! valid_attributes
      get :show, {:id => undergraduate_advisement.to_param}, valid_session
      expect(assigns(:undergraduate_advisement)).to eq(undergraduate_advisement)
    end
  end

  describe "GET #new" do
    it "assigns a new undergraduate_advisement as @undergraduate_advisement" do
      get :new, {}, valid_session
      expect(assigns(:undergraduate_advisement)).to be_a_new(UndergraduateAdvisement)
    end
  end

  describe "GET #edit" do
    it "assigns the requested undergraduate_advisement as @undergraduate_advisement" do
      undergraduate_advisement = UndergraduateAdvisement.create! valid_attributes
      get :edit, {:id => undergraduate_advisement.to_param}, valid_session
      expect(assigns(:undergraduate_advisement)).to eq(undergraduate_advisement)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new UndergraduateAdvisement" do
        expect {
          post :create, {:undergraduate_advisement => valid_attributes}, valid_session
        }.to change(UndergraduateAdvisement, :count).by(1)
      end

      it "assigns a newly created undergraduate_advisement as @undergraduate_advisement" do
        post :create, {:undergraduate_advisement => valid_attributes}, valid_session
        expect(assigns(:undergraduate_advisement)).to be_a(UndergraduateAdvisement)
        expect(assigns(:undergraduate_advisement)).to be_persisted
      end

      it "redirects to the created undergraduate_advisement" do
        post :create, {:undergraduate_advisement => valid_attributes}, valid_session
        expect(response).to redirect_to(UndergraduateAdvisement.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved undergraduate_advisement as @undergraduate_advisement" do
        post :create, {:undergraduate_advisement => invalid_attributes}, valid_session
        expect(assigns(:undergraduate_advisement)).to be_a_new(UndergraduateAdvisement)
      end

      it "re-renders the 'new' template" do
        post :create, {:undergraduate_advisement => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested undergraduate_advisement" do
        undergraduate_advisement = UndergraduateAdvisement.create! valid_attributes
        put :update, {:id => undergraduate_advisement.to_param, :undergraduate_advisement => new_attributes}, valid_session
        undergraduate_advisement.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested undergraduate_advisement as @undergraduate_advisement" do
        undergraduate_advisement = UndergraduateAdvisement.create! valid_attributes
        put :update, {:id => undergraduate_advisement.to_param, :undergraduate_advisement => valid_attributes}, valid_session
        expect(assigns(:undergraduate_advisement)).to eq(undergraduate_advisement)
      end

      it "redirects to the undergraduate_advisement" do
        undergraduate_advisement = UndergraduateAdvisement.create! valid_attributes
        put :update, {:id => undergraduate_advisement.to_param, :undergraduate_advisement => valid_attributes}, valid_session
        expect(response).to redirect_to(undergraduate_advisement)
      end
    end

    context "with invalid params" do
      it "assigns the undergraduate_advisement as @undergraduate_advisement" do
        undergraduate_advisement = UndergraduateAdvisement.create! valid_attributes
        put :update, {:id => undergraduate_advisement.to_param, :undergraduate_advisement => invalid_attributes}, valid_session
        expect(assigns(:undergraduate_advisement)).to eq(undergraduate_advisement)
      end

      it "re-renders the 'edit' template" do
        undergraduate_advisement = UndergraduateAdvisement.create! valid_attributes
        put :update, {:id => undergraduate_advisement.to_param, :undergraduate_advisement => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested undergraduate_advisement" do
      undergraduate_advisement = UndergraduateAdvisement.create! valid_attributes
      expect {
        delete :destroy, {:id => undergraduate_advisement.to_param}, valid_session
      }.to change(UndergraduateAdvisement, :count).by(-1)
    end

    it "redirects to the undergraduate_advisements list" do
      undergraduate_advisement = UndergraduateAdvisement.create! valid_attributes
      delete :destroy, {:id => undergraduate_advisement.to_param}, valid_session
      expect(response).to redirect_to(undergraduate_advisements_url)
    end
  end

end
