class DocumentaryFilmController < ApplicationController
  def index
    @doc = DocumentaryFilm.all
  end

  def new
    @doc = DocumentaryFilm.new
  end

def create
  @doc = DocumentaryFilm.new(doc_params)

    if @doc.save
      redirect_to documentary_film_index_path
      else
      render :new
      end
end

private
def doc_params
  params.require(:documentary_film).permit(:name, :synopsis, :director)
end
end
