require 'rubygems'
require 'nokogiri'
require 'open-uri'

class Link < Sequel::Model

  def self.fetch_title(url)
    Nokogiri::HTML(open(url)).css('title').text
  end
end
