class MP3Importer
  require 'pry'
  attr_accessor :path, :file_array

  def initialize(path)
    @path = path
  end

  def files
    # all_files = Dir.glob("#{@path}/*.mp3")
    # @normalized_files = all_files.collect{|file_name| File.basename(file_name)}

    @file_array = Dir.entries(@path).select{|file| file.include?(".mp3")}

    # @files_array = Dir.entries(@path) - [".", ".."]
  end

  # def import
  #   self.files
  #   @file_array.each{|song| Song.new_by_filename(song)}
  # end

  def import
    self.files
    @file_array.each do |filename|
      artist_name = filename.split(" - ")[0]
      artist = Artist.find_or_create_by_name(artist_name)
      song = filename.split(" - ")[1]
      artist.add_song(song)
    end
  end
end

# Dir.glob("#{directory}/*.csv")
# Dir['path/to/dir/*'].select { |e| File.file?(e) }
