require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path

  end

  def files
     @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }

  end

  def import
    files.each{|f| Song.new_by_filename(f)}
  end



end

#test_music_path = "./spec/fixtures/mp3s"
#music_importer = MP3Importer.new(test_music_path)
#music_importer.files
