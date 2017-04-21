require 'pry'
class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    self.path = path
    self.files = []
  end

  def files
    song_list = []
    file_list = Dir["#{@path}/*.mp3"]
    file_list.each do |filename|
      song_list << filename.split(/\//)[-1]
    end
    @files = song_list
  end

  def import
    self.files.each {|e| Song.new_by_filename(e)}
  end
end
