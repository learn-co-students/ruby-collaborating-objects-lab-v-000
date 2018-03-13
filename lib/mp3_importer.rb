require 'pry'

class MP3Importer
  attr_accessor:path
    

  def initialize(path)
    @path = path
    self.files
  end

  def files
    @listoffiles= Dir.entries(self.path).select {|f| !File.directory? f}
  end


  def import
    @listoffiles.each { |filename|
      Song.new_by_filename(filename)
      }
  end

end
