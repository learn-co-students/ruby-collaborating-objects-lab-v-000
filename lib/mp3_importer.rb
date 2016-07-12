require "pry"
class MP3Importer
attr_accessor :files
attr_reader :path

  def initialize(path) #accepts a file path to parse mp3 files from
    @path = path
  end

  def files
    @files = Dir.entries(path) #put the list of files in the files directory!
    @files.delete_if do |file| #iterate and delete if there are any ".." or "."
      file == ".." || file =="."
    end
  end

  def import
     @files.collect do |file_name|
        if !file_name.include?(Song.new_by_filename(file_name).artist.name)
          Song.new_by_filename(file_name)
        else
          files.delete(file_name)
        end
        #  binding.pry
    end
  end


end
