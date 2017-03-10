class SpeciesController < ApplicationController

  def index
    @species = Species.paginate(:page => params[:page], :per_page => 30)
  end

  def new
    @species = Species.new
  end

  def create
    @species = Species.new(species_params)
    if params[:file].present?
      cloudinary_upload = Cloudinary::Uploader.upload(params[:file])
      if cloudinary_upload
        @image = Image.new( public_id: cloudinary_upload["public_id"], url: cloudinary_upload["url"] )
      end
    end

  if @species.save
      @image.species_id = @species.id
      @image.save
      redirect_to species_path( @species ), notice: "Created"
    else
      redirect_to new_species_path, notice: "Something went wrong"
    end
  end

  def show
    @species = Species.find(params[:id])
  end

  def edit
    @species = Species.find(params[:id])
  end

  def update
    @species = Species.find(params[:id])
    @species.update_attributes(species_params)

    if params[:file].present?
      cloudinary_upload = Cloudinary::Uploader.upload(params[:file])
      if cloudinary_upload
        @image = Image.new( public_id: cloudinary_upload["public_id"], url: cloudinary_upload["url"] )
      end
    end

    if @species.save
      redirect_to species_path, notice: "Updated"
    else
      redirect_to edit_species_path, notice: "Something went wrong"
    end
  end

  private
  def species_params
    params.require(:species).permit(:common_name, :latin_name, :description, :status, :habitat, :biology, :more_info)
  end

end
