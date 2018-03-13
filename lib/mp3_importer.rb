require 'pry'
class MP3Importer
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
    @files = []
    Dir.chdir(@path) do 
    files = Dir.glob("*.mp3")
    files.each {|file| @files << file}
    end
  end

  def files
    @files
  end
  
  def import
    @files.each do |file|
      artist_name = file.scan(/\A\w*\s*\w*\w*\s*\w*\s*\b/).join("")
      song = file.scan(/-\s\w*\s*\w*\s*\w*\s*-/).join("").delete("-").strip
      new_artist = Artist.find_or_create_by_name(artist_name)
      if new_artist == true
        nil
      else
        new_artist.save
      end
    end
  end
end








