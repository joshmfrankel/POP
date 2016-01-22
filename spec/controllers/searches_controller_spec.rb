require 'rails_helper'

RSpec.describe SearchesController, type: :controller do
  describe 'GET #search' do
    it 'render index without results' do
      get :search, q: nil
      expect(assigns(:journals)).to be_empty
    end

    context 'generic search form' do
      before(:each) do
        journal = FactoryGirl.create(:journal)
        fancy_journal = FactoryGirl.create(:fancy_journal)
        journal.reindex
        fancy_journal.reindex
        Journal.searchkick_index.refresh
      end

      it 'with empty search criteria' do
        get :search
        expect(assigns(:journals)).to be_a(Searchkick::Results)
        expect(assigns(:journals).size).to eql(2)
      end

      it 'with generic search criteria' do
        get :search, q: 'MyString'
        expect(assigns(:journals)).to be_a(Searchkick::Results)
        expect(assigns(:journals).size).to eql(1)
      end

      it 'with bad generic search criteria' do
        get :search, q: 'GarbageQuery'
        expect(assigns(:journals)).to be_a(Searchkick::Results)
        expect(assigns(:journals).size).to be_zero
      end
    end

    context 'facetted search form' do
      it 'with editor criteria' do
        get :search, editor: 'Josh'
        #expect(assigns(:journals).size).to eql(1)
      end
    end

  end
end
