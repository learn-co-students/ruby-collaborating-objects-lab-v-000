require 'pry'

class MP3Importer
  attr_accessor :path, :list

  def initialize(path)
    @path = path
  end
  def files
    @list = Dir.entries(@path).select{|file| file.include?('.mp3')}
  end
  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end

end
