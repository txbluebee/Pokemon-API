require 'rails_helper'

describe "delete a monster route", :type => :request do

  before do
    monster = FactoryGirl.create(:monster)
    delete '/monsters/' + monster.id.to_s
  end

  it 'returns status code 200' do
    expect(response).to have_http_status :ok
  end

end
