require 'rubygems'
require 'httparty'

module Macrofab
  class Client
    include HTTParty

    API_ENDPOINT = "https://api.macrofab.com/api/v2"

    def initialize(options={})
      self.class.base_uri API_ENDPOINT
      self.class.headers "Accept" => "application/json"
      @options = { query: { 'apikey' => options[:key] } }
    end

    def projects
      self.class.get('/pcbs', @options)
    end

    def list_parts
      self.class.get('/parts/categories', @options)
    end

    def products
      self.class.get('/products', @options)
    end

    def list_shipment_notifications
      self.class.get('/asns', @options)
    end

    def fulfillments
      self.class.get('/fulfillments', @options)
    end

    def orders
      self.class.get('/orders', :query => @api_key)
    end

    def order(order_id)
      self.class.get('/order/#{order_id}', :query => @api_key)
    end
  end # end of client
end # end of module