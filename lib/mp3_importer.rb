
require 'pry'
require 'pathname'

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("./#{@path}/*").collect {|file| File.basename("#{file}")}

  end

  def import
    self.files.each do |file_name|

      Song.new_by_filename(file_name)
    end
  end

end
