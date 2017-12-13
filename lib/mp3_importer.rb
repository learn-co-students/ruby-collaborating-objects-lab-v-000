# require 'pry'
# class MP3Importer
#   attr_accessor :path
#
#   def initialize(path)
#     @path = path
#
#   end
#
#   def files
#     @files ||= Dir.glob("#{path}/*.mp3").map {|e| e.gsub("#{path}/", "")}
#     # or/equals :: if left side is true, don't check the right.
#     #Dir.glob -- Dir== directory streams, lists directories and paths and contents
#     # glob == not a regex * matches any file, ** matches directories recursively,
#   end
#
#   def import
#     binding.pry
#     files.each do|f|
#       Song.new_by_filename(f)
# #       Artist.find_or_create_by_name(f)
# #     end
# #   end
# # end
# class MP3Importer
#   attr_reader :path
#
#   def initialize(path)
#     @path = path
#   end
#
#   def files
#     @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
#   end
#
#   def import(song)
#     # files.map{|f| Song.new_by_filename(f)}
#
#     files.each do |f|
#       Song.new_by_filename(f)
#     end
#   end
# end
#
class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
    files.map{|f| Song.new_by_filename(f)}
  end
end
