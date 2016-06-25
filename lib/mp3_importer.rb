require "pry"
class MP3Importer

attr_accessor
attr_reader :path
# attr_reader :import

  def initialize(path) #accepts a file path to parse mp3 files from
    @path = path
  end

  def files
    files = Dir.entries(path) #put the list of files in the files directory!
      files.delete_if do |file| #iterate and delete if there are any ".." or "."
        file == ".." || file =="."
      end
  end

  def import
     files.each do |file_name|
       Song.new_by_filename(file_name)
     end
  end

end
