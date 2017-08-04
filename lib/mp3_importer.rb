require 'pry'

class MP3Importer
  attr_accessor :path, :filename

  def initialize(path)
    @path = path
  end

  def files
    Dir["#{path}/*mp3"].each {|file| file.sub!("./spec/fixtures/mp3s/", "")}
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end


# class MP3Importer
#   attr_accessor :path, :file_name
#
#   def initialize(path)
#     @path = path
#   end
#
#   def files
#     Dir["#{path}/*.mp3"].each {|file| file.sub!("./spec/fixtures/mp3s/", "")}
#   end
#
#   def import
#     files.each {|file_name| Song.new_by_filename(file_name)}
#   end


end
