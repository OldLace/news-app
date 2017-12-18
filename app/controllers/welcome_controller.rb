require 'HTTParty'
require 'open-uri'

class WelcomeController < ApplicationController
  def index
    @headlines = []
    response = HTTParty.get "https://newsapi.org/v2/top-headlines?sources=google-news&apiKey=NEWSAPI_KEY"
    news = response.parsed_response['title']
    @headlines.push news

# def show
#   get '/show', to: 'Welcome#show'
# end



    # @newsfeed = HTTParty.get('https://newsapi.org/v2/top-headlines?sources=google-news&apiKey=NEWSAPI_KEY',
    # :headers => {'Content-Type' => 'application/json'} )
  end
end

# class GoogleNews
#   include HTTParty
#   base_uri "https://newsapi.org/v2/"
#
#   def initialize(ENV[NEWSAPI_KEY])
#   attr_accessor :NEWSAPI_KEY
#   end
#   def headlines
#     self.classs.get('/top-headlines?sources=google-news')
#   end
# end

class Monday
  # get '/show' do
  #   @headlines = []

    # response = HTTParty.get "https://newsapi.org/v2/top-headlines?sources=google-news&apiKey=NEWSAPI_KEY"
    # news = response.parsed_response['title']
    # response.parsed_response['description']
    # response.parsed_response['url']
  # @headlines.push news
    # erb :index

end


class TryAgain
  kittens = open('http://placekitten.com/')
  response_status = kittens.status
  response_body = kittens.read[559, 441]

  puts response_status
  puts response_body
end



# class MainNews
#   include HTTParty
#   base_uri 'https://newsapi.org/v2'
#   default_timeout 6 # timeout after 6 seconds
#
#   def api_key
#     ENV['NEWSAPI_KEY']
#   end
#
#   def base_path
#     "/top-headlines?sources=google-news&apiKey=#{ api_key }"
#   end
#
#   def  handle_timeouts
#     begin
#       yield
#     rescue Net::OpenTimeout, Net::ReadTimeout
#         {}
#     end
#   end
#
#   def example_work_please
#
#   end
# end




 #  class API
 #  API_URL = 'https://newsapi.org/v2/top-headlines?sources=google-news&apiKey='
 #
 #  def unique_url
 #    response = HTTParty.get(API_URL)
 #    json = JSON.parse(response.body)
 #    json['url']
 #  end
 # end





# class NewsFeed
#   include HTTParty
#   base_uri = HTTParty.get('https://newsapi.org/')
#   format :json
#
#  def initialize(service, page)
#   @options = { query: {site: service}}
#  end
#
#   def headlines
#     self.class.get('/v2/top-headlines&apiKey=NEWSAPI_KEY', @options)
#   end
#
#   # def authors
#   #   self.class.get
#   # end
# end
#
# news_feed = NewsFeed.new()

# https://newsapi.org/v2/top-headlines?sources=google-news&apiKey=NEWSAPI_KEY