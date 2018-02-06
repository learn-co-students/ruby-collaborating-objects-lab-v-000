
class MP3Importer
  attr_accessor :path
  attr_reader :files
  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{path}/*.mp3").collect do |song|
      song.slice!(0,21)
      song
    end
  end

  def import
    files.each do |files| Song.new_by_filename(files)
      end
  end


end
