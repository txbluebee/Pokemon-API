require 'rails_helper'

describe "post a monster route", :type => :request do

  before do
    post '/monsters', params: { :name => 'Pikachu', :location => 'Seattle', :move => 'lightning' }
  end

  it 'returns the monster name' do
    expect(JSON.parse(response.body)['name']).to eq('Pikachu')
  end

  it 'returns the monster location' do
    expect(JSON.parse(response.body)['location']).to eq('Seattle')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
