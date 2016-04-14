require 'pry'
class Song
  attr_accessor :name, :songs, :artist
  #attr_reader :artist
  def initialize(name)
    @name = name
  end

  def song=(name)
    @name = name
  end

  def artist=(name)
    if self.artist.nil?
      @artist = name
    else
      @artist.name
    end
  end


  def self.new_by_filename(file_name)
    new_a =  file_name.split(/\s\-\s/)
    new_instance = self.new(new_a[1])
    new_instance2 = Artist.new(new_a[0])
    new_instance.artist = new_instance2
    new_instance

  end
end