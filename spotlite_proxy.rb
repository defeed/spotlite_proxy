require "sinatra"
require "json"
require "spotlite"

class SpotliteProxy < Sinatra::Base
  get "/" do
    { success: true }.to_json
  end

  get "/movies/search" do
    total_results = 10000
    per_page = 250
    pages = total_results / per_page
    page = params[:page].to_i
    page = 1 if page < 1
    page = pages if page > pages
    movies = []

    Spotlite::Movie.search(page: page).each do |m|
      movies << {
        imdb_id: m.imdb_id,
        title: m.title,
        year: m.year
      }
    end

    {
      page: page,
      pages: pages,
      movies: movies
    }.to_json
  end

  get "/movies/:imdb_id" do
    m = Spotlite::Movie.new(params[:imdb_id])

    {
      imdb_id: m.imdb_id,
      title: m.title,
      original_title: m.original_title,
      year: m.year,
      rating: m.rating,
      votes: m.votes,
      metascore: m.metascore,
      description: m.description,
      content_rating: m.content_rating,
      runtime: m.runtime,
      poster_url: m.poster_url,
      genres: m.genres,
      countries: m.countries,
      languages: m.languages,
      stars: m.stars,
      recommended_movies: m.recommended_movies
    }.to_json
  end

  get "/movies/:imdb_id/release_info" do
    m = Spotlite::Movie.new(params[:imdb_id])

    {
      imdb_id: m.imdb_id,
      release_date: m.release_date,
      relase_dates: m.release_dates,
      alternative_titles: m.alternative_titles
    }.to_json
  end

  get "/movies/:imdb_id/plot_summaries" do
    m = Spotlite::Movie.new(params[:imdb_id])

    {
      imdb_id: m.imdb_id,
      plot_summaries: m.plot_summaries
    }.to_json
  end

  get "/movies/:imdb_id/keywords" do
    m = Spotlite::Movie.new(params[:imdb_id])

    {
      imdb_id: m.imdb_id,
      keywords: m.keywords
    }.to_json
  end

  get "/movies/:imdb_id/trivia" do
    m = Spotlite::Movie.new(params[:imdb_id])

    {
      imdb_id: m.imdb_id,
      trivia: m.trivia
    }.to_json
  end

  get "/movies/:imdb_id/taglines" do
    m = Spotlite::Movie.new(params[:imdb_id])

    {
      imdb_id: m.imdb_id,
      taglines: m.taglines
    }.to_json
  end

  get "/movies/:imdb_id/critic_reviews" do
    m = Spotlite::Movie.new(params[:imdb_id])

    {
      imdb_id: m.imdb_id,
      critic_reviews: m.critic_reviews
    }.to_json
  end

  get "/movies/:imdb_id/images" do
    m = Spotlite::Movie.new(params[:imdb_id])

    {
      imdb_id: m.imdb_id,
      images: m.images
    }.to_json
  end

  get "/movies/:imdb_id/cast" do
    m = Spotlite::Movie.new(params[:imdb_id])

    {
      imdb_id: m.imdb_id,
      cast: m.cast
    }.to_json
  end

  get "/movies/:imdb_id/crew" do
    m = Spotlite::Movie.new(params[:imdb_id])

    {
      imdb_id: m.imdb_id,
      crew: m.crew
    }.to_json
  end

  get "/movies/:imdb_id/credits" do
    m = Spotlite::Movie.new(params[:imdb_id])

    {
      imdb_id: m.imdb_id,
      credits: m.credits
    }.to_json
  end
end
