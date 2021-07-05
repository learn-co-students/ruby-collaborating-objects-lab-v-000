class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    entries = Dir.entries(@path)
    entries = entries.delete_if { |e| e.size < 3 }
    entries
  end

  def import
   files.each { |song_name| Song.new_by_filename(song_name) }
 end
 
end
