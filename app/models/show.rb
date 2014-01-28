class Show < ActiveRecord::Base
  attr_accessible :last_episode, :last_season, :title, :rss
  attr_accessor :rss
  before_create :set_entries

  def set_entries
    rapidfeed  ="http://rapidmoviez.com/feed"
    #hdtv series
    rslinks = "http://www.rslinks.org/taxonomy/term/844/feed"
    #tvseries
    rslinks = "http://www.rslinks.org/taxonomy/term/3/feed"
    feeded = Feedzirra::Feed.fetch_and_parse(rslinks)


  end
end

