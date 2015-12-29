require 'pry'

# class MP3Importer
#
#   def initialize(directory)
#     @path = directory
#     @array_of_files = []
#     import
#   end
#
#   def path
#     @path
#   end
#
#   def files
#     @array_of_files.each
#   end
#
#   def import
#     @array_of_files = Dir["#{@path}**/*.mp3"]
#     @array_of_files.each { |song_with_path| song_with_path.slice!(@path + '/')}
#     @array_of_files.each { |song| parse_file_name(song)}
#   end
#
#   def parse_file_name(song_w_artist_and_genre)
#     temp_song = song_w_artist_and_genre.split(' - ')
#     artist = temp_song[0]
#     song_name = temp_song[1]
#     genre = temp_song[2]
#     new = Artist.find_or_create_by_name(artist)
#     new.add_song(song_name)
#   end
#
# end
#
# test_music_path = "../db/mp3s"
# music_importer = MP3Importer.new(test_music_path)
# music_importer.files

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end

  def files
    Dir[path + "/*.mp3"].map do |entry|
      entry.split("mp3s/")[1]
    end
  end
end




