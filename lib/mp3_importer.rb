class MP3Importer
attr_accessor :path, :filenames,:title

  def initialize(path)
    @path = path
    @filenames = []
  end

   def files
     Dir.entries(path).each do |filename|
       #loads all the mp3 files in the path directory
         @filenames << "#{filename}"
       end
       @filenames.delete_if {|x| x == "." || x == ".."}
       #normalizes the filename to just the mp3 filename with no path
     end

    def import
      # binding.pry
         files.each{ |file_name| Song.new_by_filename(file_name) }

  # def import
  #   #imports the files into the library by creating songs from a filename
  #       files.each do |filename|
  #         filename.split(" - ")[2] = artist
  #         Artist.find_or_create_by_name(artist)
  #         filename.split(" - ")[1] = song
  #          Artist.add_song(song)
  #      end
    end

end
