class ChordatumController < ApplicationController

  def index
    @chordata = Chordatum.all
    @chordata = Chordatum.paginate(:page => params[:page])
  end

  def create
    @chordatum = Chordatum.new(chordatum_params)
    @chordatum.save
  end

  def show
  end

  def chordatum_params
    params.require(:chordatum).permit(:class_name, :image)
  end
end
