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

# RSpec.describe PostsController, type: :controller do
#   describe "GET #indexNEW" do
#     let(:user){create :user}
#     before do
#       sign_in user
#     end
#     it "responds successfully with a HTTP 200 status code" do
#       get :index
#       expect(response).to be_success
#       # expect(response).to have_http_status(200)
#     end
#
#     it "should render index template" do
#       get :index
#       expect(response).to render_template('index')
#     end
#   end
# end

# describe "POST #create" do
#   it "should create new post with valid params" do
#     post :create, post: { title: 'My First Post', description: 'My first post description' }
#     expect(Post.count).to eq(1)
#   end
#
#   it "redirects to show page once the post is created successfully" do
#     post :create, post: { title: 'My First Post', description: 'My first post description' }
#     expect(response).to redirect_to(Post.first)
#   end
#
#   it "does not allow to create post without title" do
#     post :create, post: { description: 'My first post description' }
#     expect(Post.count).to eq(0) # This make sure validates :title, presence: true in post.rb
#   end
#
#   it "renders new template if failed to create post" do
#     post :create, post: { description: 'My first post description' }
#     expect(response).to render_template('new')
#   end
# end
#
# describe "GET #index" do
#   it "responds successfully with a HTTP 200 status code" do
#     get :index
#     expect(response).to be_success
#     expect(response).to have_http_status(200)
#   end
#
#   it "should render index template" do
#     get :index
#     expect(response).to render_template('index')
#   end
# end
