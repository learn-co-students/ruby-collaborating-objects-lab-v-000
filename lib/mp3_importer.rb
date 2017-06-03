require 'pry'

class MP3Importer

attr_accessor :path

  def initialize(path)
    @path = path
  end

# from stackoverflow
# To get all files (strictly files only) recursively:

# Dir.glob('path/**/*').select{ |e| File.file? e }
# Or anything that's not a directory (File.file? would reject non-regular files):

# Dir.glob('path/**/*').reject{ |e| File.directory? e }

  def files
 @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }

end

  def import
files.each{|f| Song.new_by_filename(f)}
  end

end
