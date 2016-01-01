require 'rails_helper'

RSpec.describe SearchesController, type: :controller do
  describe 'GET #search' do
    it 'render index without results' do
      get :search, q: nil
      expect(assigns(:journals)).to be_empty
    end

    context 'generic form' do
      it 'render index with results' do
        get :search, q: 'MyString'
        expect(assigns(:journals)).to be_a(Searchkick::Results)
      end

      it 'render index with query but no results' do
        get :search, q: 'GarbageQuery'
        expect(assigns(:journals)).to be_a(Searchkick::Results)
        puts assigns(:journals).inspect
      end
    end

  end
end
