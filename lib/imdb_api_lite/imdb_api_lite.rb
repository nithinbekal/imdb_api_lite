
module Imdb
  BASE_URL = "http://www.deanclatworthy.com/imdb"

  def self.search(title)
    uri = URI.parse  "#{BASE_URL}/?q=#{URI.escape title}"
    response = Net::HTTP.get_response(uri)
    body = response.body
    json = JSON.parse body
    json['code'] ? nil : Movie.new(json)
  end

  class Movie
    attr_accessor :title, :year, :genres, :rating, :duration

    def initialize(json)
      @title    = json['title']
      @year     = json['year']
      @genres   = json['genres'].split(',')
      @rating   = json['rating']
      @duration = json['runtime']
    end

    def summary
      "#{@title} (#{@year})\n"            + \
      "Rating:   #{@rating}\n"            + \
      "Genres:   #{@genres.join(', ')}\n" + \
      "Duration: #{@duration}"
    end
  end
end