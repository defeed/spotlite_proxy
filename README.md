# spotlite-proxy

A lightweight Sinatra app that utilizes spotlite gem to fetch movie information and return it in JSON format

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

At this point you can access several endpoints to get various movie details. All you need is IMDb ID of movie (i.e. 0076759, Star Wars, 1977)

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


[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/defeed/spotlite_proxy&env[PORT]=8080)
