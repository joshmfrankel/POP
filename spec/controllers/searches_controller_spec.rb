require 'rails_helper'

RSpec.describe SearchesController, type: :controller do
  describe 'GET #search' do
    it 'render index without results' do
      get :search, q: nil
      expect(assigns(:journals)).to be_empty
    end

    it 'render index with results' do
      get :search, q: 'MyString'
      expect(assigns(:journals)).to be_a(Elasticsearch::Model::Response::Response)
    end

    it 'render index with query but no results' do
      get :search, q: 'GarbageQuery'
      expect(assigns(:journals)).to be_a(Elasticsearch::Model::Response::Response)
    end
  end
end
