require 'rails_helper'

RSpec.describe App::Api::V1::PatientsController, type: :controller do
  context "GET #index" do
    it 'returns a success response' do
      get :index
      expect(response).to be_success
    end

  end

end
