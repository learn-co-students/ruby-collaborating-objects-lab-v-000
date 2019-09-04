require 'pry'
class MP3Importer
  # build initialize..... remebre
  attr_accessor :path, :files

    def initialize(path)
      #path is just a path way...  "./spec/fixtures/mp3s"
      # path was already giving to use. So we just tap into it
      @path = path
        # import = self.
    end

  def files
    #@files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
    #   OR
    @files = Dir.entries(@path)
    @files.delete(".")
    @files.delete("..")
    @files
  #call the file to get 4
    #operate on the files to normalize the filename to not have the mp3 at the end
  end

  def import
    self.files.each do |file|   #taking files from the method on line 13
# Since we have to send the filenames to the Song class,
# we'll end up calling the following code in the #import method: Song.new_by_filename(some_filename).
#  This will send us to the Song class, specifically Song.new_by_filename.
 #go through each file + # it uses This from our methods.
     Song.new_by_filename(file)   # we go into the Song Class to use this..

    end

  end
end
