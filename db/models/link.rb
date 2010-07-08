require 'rubygems'
require 'nokogiri'
require 'open-uri'

class Link < Sequel::Model
  
  def self.fetch_title(url)
    doc = open(url.strip)
    if doc.status.first == "200"
      select = Nokogiri::HTML(doc).css('title')
      select ? select.text : "Link"
    end
  end

  def shortened_message
    shortened_length = 60
    m = message.slice(0..shortened_length)
    m += "..." if m.length >= shortened_length
    m
  end

  def sanitized_title
    if title.strip.empty?
      "Link"
    else
      title.strip
    end
  end
end
