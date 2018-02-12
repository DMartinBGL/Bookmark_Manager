require 'database_connection'
require 'uri'

class Link
  attr_reader :id, :url

  def initialize(id, url)
    @id = id
    @url = url
  end

  def self.all
    result = DatabaseConnection.query("SELECT * FROM links")
    result.map { |link| Link.new(link['id'], link['url']) }
  end

  def self.create(options)
    return false unless is_url?(options[:url])
    DatabaseConnection.query("INSERT INTO links (url) VALUES('#{options[:url]}')")
  end

  private

  def self.is_url?(url)
    url =~ /\A#{URI::regexp(['http', 'https'])}\z/
  end
end