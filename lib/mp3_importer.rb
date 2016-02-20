require 'pry'
require 'pathname'

class MP3Importer
  #attr_accessor :File.join(File.dirname(__FILE__), *%w[rel path here])
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    file_names = []
    files = Dir["#{self.path}/**/*.mp3"]
    files.each do |file|
      file_names << file = File.basename('#{self.path}/**/*')
    end
    # file_names.collect {|file| file.split(", ")}
    #binding.pry
    file_names
  end
end