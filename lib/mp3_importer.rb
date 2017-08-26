class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
    end


  def files
    test_music_path = Dir.glob("#{path}/*.mp3")
    mp3 = []
    test_music_path.each do |f|
      mp3 << f.gsub("#{path}/", "")
    end
    mp3
  end


  def import
   files.each{ |filename| Song.new_by_filename(filename) }
  end


end #end of MP3Importer class
