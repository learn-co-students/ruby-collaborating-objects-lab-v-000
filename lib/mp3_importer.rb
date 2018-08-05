require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(self.path).delete_if {|filename| !filename.include?('mp3')}
    #binding.pry
  end

  def import
    self.files.each {|filename| Artist.all << Song.new_by_filename(filename).artist}
    Artist.all.uniq!
    #binding.pry
  end

end
