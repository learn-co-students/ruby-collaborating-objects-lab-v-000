require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    paths = Dir["#{@path}/*.mp3"]
    paths.collect! {|path| path = path.split("/")[-1]}
    paths
  end

  def import
    paths = files
    paths.each do |filename|
      Song.new_by_filename(filename)
    end

  end
end
