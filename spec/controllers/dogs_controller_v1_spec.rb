require 'rails_helper'

RSpec.describe Api::V1::DogsController, type: :controller do 

  before{@dog = Dog.create(breed: 'dalmata', size: 'medio')}

  describe 'GET /api/v1/dogs' do
    it 'Consegue listar todos os dogs e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /api/v1/dogs/id' do
    it 'Consegue listar um dog especifico e retornar status 200?' do
      get :show, params: {id: @dog.id}
      expect(response.body).to include_json(breed: 'dalmata')
      expect(response).to have_http_status(200)
    end
  end

end