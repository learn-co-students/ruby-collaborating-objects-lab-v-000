#The MP3 Importer will parse all the filenames in the db/mp3s folder and send the filenames to the Song class
require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{path}/*.mp3").collect { |file| file.gsub("#{path}/","")} #takes a directory, pulls out each line that starts with path and ends in mp3, crops off the path, collects in array as "Artist - Song - genre.mp3"
  end

  def import
    self.files.each {|file| Song.new_by_filename(file)}    #separates above array into individual files that are passed to Song
  end

 end
