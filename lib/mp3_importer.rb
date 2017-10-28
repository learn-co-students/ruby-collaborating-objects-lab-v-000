class MP3Importer
  attr_accessor :path, :files
  
  def initialize(file_path)
    @path = file_path
    @files = Dir.entries(file_path).find_all{|file| file.match(/.*\.mp3/)}
  end

  def self.file_shredder(file)
    mp3_info = {}
    mp3_info[:artist], mp3_info[:song], mp3_info[:genre] = file.match(/(.*) - (.*) - (.*)\.mp3/i).captures
    mp3_info
  end

  def import
    self.files.each {|file| Song.new_by_filename(file)}
  end
end