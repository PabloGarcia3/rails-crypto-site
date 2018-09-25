class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    # @my_coins = ["BTC", "ETH", "XRP"]
    @bitcoin = ["BTC"]
    @ethereum = ["ETH"]
    @ripple = ["XRP"]
    @bitcoin_cash = ["BCH"]
    @eos = ["EOS"]
    @stellar = ["XLM"]
    @litecoin = ["LTC"]
    @cardano = ["ADA"]
    @monero = ["XMR"]
    @iota = ["MIOTA"]
    @steem = ["STEEM"]
    
  end
  
  def about
  end
  
  def lookup
    require 'net/http'
    require 'json'
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @lookup_coin = JSON.parse(@response)
    @symbol = params[:sym]
    if @symbol
      @symbol = @symbol.upcase
    end
    
    if @symbol == ""
      @symbol = "Please enter an coin name"
    end
  end
end
