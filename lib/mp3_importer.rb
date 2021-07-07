require 'pry'
class MP3Importer
attr_accessor :path

def initialize(path)
  @path = path
  @filenames = []
end

def files
   Dir.entries(path).each do |filename|
     @filenames << filename
   end
   @filenames.delete_if {|x| x == "." || x == ".."}
 end

def import
  files
  @filenames.each do |x|
    Song.new_by_filename(x)

  end


end














end
