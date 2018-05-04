require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
        filenames = Dir.chdir(@path) do | path |
            Dir.glob("*.mp3")
        end
        filenames
    end

    def import(list_of_filenames)
      list_of_filenames.each {|filename| Song.new_by_filename(filename)}
    end
end
