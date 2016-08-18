require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).select { |file| file.end_with?(".mp3") }
  end

  def import
    self.files.each {|file_name| Song.new_by_filename(file_name)}
  end


end





#parses directory of files
#filename sent to song class with artists that are unique
#MP3Import.new('./db/mp3s').import

#import - to send the filenames to the Song class. calling #import method
  #Song.new_by_filename(some_filename) - will send us to Song class
#Action Bronson - Larry Csonka - indie.mp3
#Artist - song - genre.mp3