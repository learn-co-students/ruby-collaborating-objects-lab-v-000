require_relative 'song.rb'
require 'pry'
class MP3Importer
  attr_accessor :path
  files = []

  def initialize(filepath)
    @path = filepath
  end

  def files
   files = Dir["./spec/fixtures/mp3s/*"].map { |file_name| file_name.gsub('./spec/fixtures/mp3s/', '') }
  end

  def import
    files.each do |file_name|
      Song.new_by_filename(file_name)
    end

  end

end
