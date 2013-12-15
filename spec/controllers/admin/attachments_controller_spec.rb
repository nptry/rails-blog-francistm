require 'spec_helper'

describe Admin::AttachmentsController do
  before :each do
    @user = create(:user)
    login_user @user
  end

  context "will render correct views" do
    it "GET #show" do
      attachment = create(:attachment)
      get :show, :id => attachment
      expect(response).to render_template "show"
    end

    it "GET #edit" do
      attachment = create(:attachment)
      get :edit, :id => attachment
      expect(response).to render_template "edit"
    end

    it "GET #index" do
      get :index
      expect(response).to render_template "index"
    end

    it "PUT #update"

    it "POST #create" do
      attachment = create(:attachment, file_key: "attachment.jpg")
      post :create, attachment: attachment, format: :json

      expect(response.body).to eq attachment.to_json
    end

    it "DELETE #destroy"
  end
end
