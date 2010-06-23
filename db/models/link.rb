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

  def sanitized_title
    if title.strip.empty?
      "Link"
    else
      title.strip
    end
  end
end
