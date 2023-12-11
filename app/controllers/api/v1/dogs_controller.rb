class Api::V1::DogsController < ApplicationController

  before_action :set_dog, only: %i[show] #show update destroy

  def index
    @dogs = Dog.all 
    render json: @dogs
  end

  def show
    render json: @dog
  end

private

def set_dog
  @dog = Dog.find(params[:id])
end

def dog_params
  params.require(:dog).permit(:breed, :size)
end

end