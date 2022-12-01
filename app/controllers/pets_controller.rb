class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show; end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      # what happens here?
      redirect_to pet_path(@pet)
    else
      render :new, status: 422
    end
  end

  def edit; end

  def update
    if @pet.update(pet_params)
      redirect_to pet_path(@pet)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  private
    def pet_params
      params.require(:pet).permit(:address, :last_seen_at, :species, :image_url)
    end

    def set_pet
      @pet = Pet.find(params[:id])
    end
end


# def link_to(path, options={})
  
# end

# def pet_path(params={})
  
# end