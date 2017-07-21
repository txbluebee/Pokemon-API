require 'rails_helper'

describe "get all quotes route", :type => :request do
  let!(:monsters) { FactoryGirl.create_list(:monster, 20)}

  before { get '/monsters'}

  it 'returns all monsters' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
