class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'
    # grab info news
    @url = "https://min-api.cryptocompare.com/data/v2/news/?lang=EN"
    @uri = URI(@url)
    @reponse = Net::HTTP.get(@uri)
    @news = JSON.parse(@reponse)

    # grab price data
    @prices_url = "https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,XRP,ADA,ETH,BCH,EOS,LTC,XLM,MIOTA,USDT,TRX&tsyms=USD"
    @prices_uri = URI(@prices_url)
    @prices_reponse = Net::HTTP.get(@prices_uri)
    @prices = JSON.parse(@prices_reponse)
  end

  def prices

  end
end
