require 'rails_helper'

RSpec.describe Dog, type: :model do 

  before{@dog = Dog.new}

  describe 'Testes de prenchimento dos campos do model Dog' do

    it 'breed consegue ser preenchido?' do
      @dog.breed = 'chitsu'
      expect(@dog.breed).to eq('chitsu')
    end

    it 'size consegue ser preenchido?' do
      @dog.size = ''
      expect(@dog.size).to eq('pequeno')
    end

  end

end