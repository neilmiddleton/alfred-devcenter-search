#!/usr/bin/env ruby
# encoding: utf-8

($LOAD_PATH << File.expand_path("..", __FILE__)).uniq!

require 'rubygems' unless defined? Gem
require 'bundle/bundler/setup'
require 'alfred'
require 'excon'
require 'json'

SEARCH_ENDPOINT = 'https://devcenter-staging.heroku.com/api/v1/articles/autocomplete.json'

class DevCenterResult

  def initialize(result)
    @result = result
  end

  def to_s
    @result["title"]
  end

  def to_url
    @result["view_url"]
  end

  def to_markdown
    "[#{@result["title"]}](#{@result["view_url"]})"
  end

end

def search_devcenter(alfred, query, as_markdown)
  feedback = alfred.feedback

  query = Excon.get(SEARCH_ENDPOINT + "?query=#{query}")
  results = JSON.parse(query.body)

  results.each do |api_result|
    result = DevCenterResult.new(api_result)
    feedback.add_item({
      :uid => '',
      :title => result.to_s,
      :subtitle => result.to_url,
      :arg => as_markdown ? result.to_markdown : result.to_url
    })
  end

  puts feedback.to_alfred

end

if __FILE__ == $PROGRAM_NAME
  if ['/h', '/help'].include? ARGV[0]
    exit 0
  end

  Alfred.with_friendly_error do |alfred|
    alfred.with_rescue_feedback = true
    if ARGV[ARGV.size-1] == '--markdown'
      ARGV.pop
      query = ARGV.join(" ").strip
      search_devcenter(alfred, query, true)
    else
      query = ARGV.join(" ").strip
      search_devcenter(alfred, query, false)
    end

  end
end
