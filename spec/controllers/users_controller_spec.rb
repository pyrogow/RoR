# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe 'GET index' do
    let(:user) { create :user }
    before do
      sign_in user
    end
    it 'has a 200 status code' do
      get :index
      expect(response.status).to eq(200)
    end
  end
end
