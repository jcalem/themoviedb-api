module Tmdb
  class Trending < Struct
    def self.tv(time_window, filters={})
      result = Resource.new("/trending/tv/#{time_window}", filters).get
      TV.new(result)
    end
  end
end