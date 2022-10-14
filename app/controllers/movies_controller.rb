class MoviesController < ApplicationController
  def index
    
    @movies = Movie.joins(movie_generes: :genere).select(:id, :title, "generes.genere_name")

    @movies = Movie.order(:title).page params[:page]##pagination
    # Movie.all.order('created_at DESC')
    if params[:query]
      @movies = @movies.where("title LIKE ?","#{params[:query]}%")
    end

    # render json: {movies: @movies}, status: 200
    
  end

  def show
    @movie =Movie.find(params[:id])
  end
 
  def new
    @movie = Movie.new
    @generes = Genere.all.where.not(genere_name: nil).map{|genre| [genre.genere_name, genre.id]}
  end
 
  def create
return
    @movie = Movie.new(params_movie)
    if @movie.save
       @movie.generes.create(genere_name:params_movie[:genere_name])
      # @movie.languages.create(language_name:params_movie[:language_name])

      redirect_to @movie
    else 
      render :new ,status: :unprocessable_entity
    end
  end

  def update
   
    @movie = Movie.find(params[:id])

    if @movie.update(params_movie)
      redirect_to @movie
    else
      render :edit
    end
  end
  
  
  def edit
    @movie = Movie.find(params[:id])
  end


  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy

    redirect_to root_path , movie: :see_other
  end


  private
    def params_movie
       params.require(:movie).permit(:title , :budget, :image, generes_attributes: [:genere_name])
    end

end




