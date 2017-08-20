require "pry"
class MP3Importer
  attr_accessor :path, :files
  def initialize(path)
    @path = path
  end
  def files
    # binding.pry
    @files = Dir.entries(@path).delete_if {|x| x.include?(".mp3") == false}
    @files
  end
  def import
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
