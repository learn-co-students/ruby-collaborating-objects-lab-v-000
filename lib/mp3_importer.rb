# require 'pry'
# class MP3Importer
#   attr_accessor :path
#   def initialize(test_music_path)
#     @path = test_music_path
#   end
#
#   def files
#     music_importer = Dir.glob("#{@path}/*")
#     music_importer.map! do |file|
#       file.slice!"./spec/fixtures/mp3s/"
#       file
#     end
#   end
#
#   def import
#      files.each{|f| Song.new_by_filename(f)}
#    end
# end

class MP3Importer
  attr_reader :path

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
