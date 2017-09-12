require 'pry'

class MP3Importer
  attr_accessor :path, :files

  def initialize(file_path)
    @path = file_path
    @files = []
  end

  def files
    @files = Dir["#{@path}/*"]
    @files = @files.collect do |file|
      file_array = file.split("/")
      file_name = file_array[file_array.length - 1]
      file_name
    end

  end

  def import #creates new songs from the file names
    imported_files = self.files
    imported_files.each do |file|
      new_song = Song.new_by_filename(file)
      new_song #not sure why I need this part? 9/6/17
    end


    # imported_files.each do |file|
    #   split_file = file.split(' - ')
    #   file_artist = Artist.find_or_create_by_name(split_file[0])
    #   file_artist.add_song(split_file[1])
    #   file_artist.save
    # end
  end
end
