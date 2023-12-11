require 'rails_helper'

RSpec.describe Dog, type: :model do 

  before{@dog = Dog.new}

  describe 'Testes de prenchimento dos campos do model Dog' do

    it 'breed consegue ser preenchido?' do
      @dog.breed = 'chitsu'
      expect(@dog.breed).to eq('chitsu')
    end

    it 'size consegue ser preenchido?' do
      @dog.size = 'pequeno'
      expect(@dog.size).to eq('pequeno')
    end

  end

  describe 'Testes de validação do model Dog' do

    it 'dog valido com campos obrigatorios preenchidos?' do
      @dog.breed = 'pastor alemão'
      @dog.size = 'grande'
      expect(@dog).to be_valid
    end

    it 'dog invalido com campos obrigatorios não preenchidos?' do
      dog = Dog.new
      expect(dog).to be_valid
    end
    
  end

end