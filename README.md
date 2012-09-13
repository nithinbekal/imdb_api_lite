
# IMDB API Lite

This is a lightweight wrapper for Dean Clatworthy's IMDB API.

http://www.deanclatworthy.com/imdb/

## Installation

    gem install imdb_api_lite

## Usage

    movie = Imdb.search("citizen kane")

    movie.title       # => "Citizen Kane"
    movie.year        # => "1941"
    movie.genres      # => ["Drama", "Mystery"]
    movie.rating      # => "8.5"
    movie.duration    # => "119min"
