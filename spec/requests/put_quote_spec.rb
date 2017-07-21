require 'rails_helper'

describe "update a monster route", :type => :request do

  before do
    monster = FactoryGirl.create(:monster)
    patch '/monsters/' + monster.id.to_s, params: { :name => 'test_monster', :location => 'test_location', :move => 'lightning'}
  end

  it 'updates the monster name' do
    expect(JSON.parse(response.body)['name']).to eq('test_monster')
  end

  it 'updates the monster location' do
    expect(JSON.parse(response.body)['location']).to eq('test_location')
  end

  it 'returns status code 200' do
    expect(response).to have_http_status :ok
  end

end
