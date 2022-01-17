# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'

# Another comment
class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Bookmark Manager'
  end

  run! if app_file == $PROGRAM_NAME
end
