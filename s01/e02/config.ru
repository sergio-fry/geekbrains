require 'rack'
require 'rack/lobster'
require 'debug'

# Lobster
# Static files
# Static page with image

class StaticPage
  def initialize(title, content)
    @title = title
    @content = content
  end

  def call(env)
    [200, { 'Content-Type' => 'text/html' }, [body]]
  end

  def body
    <<~HTML
    <html>
    <h1>#{@title}</h1>

    <p>#{@content}</p>

    <img src='/images/ruby.png' />
    </html>
    
    HTML
  end
end

map '/images' do
  run Rack::File.new 'img'
end

run StaticPage.new("Ruby", "Some text here")
