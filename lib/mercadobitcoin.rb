require "mercadobitcoin/version"
require 'httparty'
require 'hmac-sha2'
require 'active_support/core_ext/hash/indifferent_access'

module MercadoBitcoin
  class << self
    attr_reader :api_key, :api_secret, :pin

    BASE_URL = "https://www.mercadobitcoin.com.br/tapi/".freeze

    def balance
      current_tonce = tonce

      method = "getInfo"
      headers = {
        "Content-type" => "application/x-www-form-urlencoded",
        "Key" => api_key,
        "Sign" => signature(method, current_tonce)
      }

      HTTParty.post(BASE_URL, {
        body: {
          method: method,
          tonce: current_tonce,
        },
        headers: headers
      })
    end

    def tonce
      Time.now.to_i
    end

    def authenticate!(credentials)
      credentials = credentials.with_indifferent_access

      @api_key = credentials[:api_key]
      @api_secret = credentials[:api_secret]
      @pin = credentials[:pin]
    end

    def signature(method, current_tonce)
      message = [method, pin, current_tonce].join(":")

      hash = HMAC::SHA512.hexdigest(api_secret, message)
    end
  end
end
