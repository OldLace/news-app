require 'HTTParty'
require 'pp'
require 'open-uri'
require 'byebug'

require 'json'
require 'pp'



class WelcomeController < ApplicationController
  def index
    # json = File.read('/google_news.json')
    # obj = JSON.parse(json)

    @headlines = HTTParty.get('https://newsapi.org/v2/top-headlines?sources=google-news&apiKey=6a44909901264e94a5d8dc9b5714bb51',
                              # pokemon = parsed_response['article']
    :headers =>{'Content-Type' => 'text/html'} )
    # JSON.parse(json)
    # puts obj
  end
  def show

  end
end

