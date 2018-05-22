# spotlite-proxy

A lightweight Sinatra app that utilizes spotlite gem to fetch movie information and return it in JSON format

## Deploy right now to Heroku

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/defeed/spotlite_proxy)

## How to

Clone this repository

```
git clone git@github.com:defeed/spotlite-proxy.git
```

Install the bundle

```
bundle install
```

Run the server on localhost's port 3000

```
bundle exec thin start -p 3000
```

List of movies ordered by current popularity is available at
http://localhost:3000/movies

This endpoint accepts `page` parameter, which can be in range of 1..40 (10000 titles available, 250 titles at once per page)
http://localhost:3000/movies?page=7

You can access several endpoints to get various movie details. All you need is IMDb ID of movie (i.e. 0076759, Star Wars, 1977)

### Movie details endpoints

#### Main details
http://localhost:3000/movies/0076759

#### Release dates and alternative titles
http://localhost:3000/movies/0076759/release_info

#### Plot summaries
http://localhost:3000/movies/0076759/plot_summaries

#### Plot keywords
http://localhost:3000/movies/0076759/keywords

#### Trivia
http://localhost:3000/movies/0076759/trivia

#### Taglines
http://localhost:3000/movies/0076759/taglines

#### Critic reviews (Metacritic excerpts)
http://localhost:3000/movies/0076759/critic_reviews

#### Still images
http://localhost:3000/movies/0076759/images

#### Cast
http://localhost:3000/movies/0076759/cast

#### Crew members
http://localhost:3000/movies/0076759/crew

#### All credits (cast + crew members)
http://localhost:3000/movies/0076759/credits

You can also access people details endpoint. All you need is IMDb ID of the person (i.e. 0000216, Arnold Schwarzenegger)

### Person details endpoint
http://localhost:3000/people/0000216
