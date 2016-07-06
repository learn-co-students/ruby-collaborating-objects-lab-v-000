require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

    def files
      Dir[@path + "/*"].each.collect do |mp3|
        mp3.split('/')[-1]
      end
    end

    def import
      self.files.each do |file_name|
        Song.new_by_filename(file_name)
      end
    end

end

