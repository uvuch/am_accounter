# frozen_string_literal: true
require 'rails_helper'

RSpec.describe "Aircraft", type: :request do
  describe "GET /aircraft" do
    it "returns http success" do
      get aircraft_index_path
      expect(response).to have_http_status(:success)
    end
  end

end
