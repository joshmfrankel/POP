require 'rails_helper'

RSpec.describe "Methodologies", type: :request do
  describe "GET /methodologies" do
    it "redirect guest" do
      get methodologies_path
      expect(response).to have_http_status(302)
    end
  end
end
