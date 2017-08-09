class Song
  attr_accessor :title, :artist#, :genre
  #@@artists = Array.new
  @@songs = Array.new
  #@@genres = Array.new

  def initialize(title)
    @title = title
  end

  def self.new_by_filename(file_name)

  end
end
