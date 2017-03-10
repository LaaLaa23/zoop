class PagesController < ApplicationController

  def landing
  end

  def home
    @chordatum = Chordatum.all
  end

  def search
  end

  def search_results
    @species = Species.keyword_search(params[:search_keywords])
  end

end
