class MP3Importer
  attr_accessor :path, :files
  
  def initialize(file_path)
    @path = file_path
    @files = Dir.entries(file_path).find_all{|file| file.match(/.*\.mp3/)}
  end

  def file_shredder(file)
    mp3_info = {}
    mp3_info[:artist], mp3_info[:song], mp3_info[:genre] = file.match(/(.*) - (.*) - (.*)\.mp3/i).captures
    mp3_info
  end

  def import
    self.files.each do |file|
      artist, song, genre = file_shredder(file).values
      #Artist.all << 
    end
  end
end