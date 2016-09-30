require 'pry'
class MP3Importer


attr_reader :path

  def initialize(path)
    @path = path

  end

  def files
    file = Dir.glob("#{path}/*.mp3")
      no_path_file =  Dir.entries(self.path)
      # binding.pry
    no_path_file.delete("..")
    no_path_file.delete(".")
    no_path_file

  end

def import
  files.each do |each_file_name|
  Song.new_by_filename(each_file_name)
  
    # binding.pry
   end
end

# 33  Here's what the "import" method should do:
# 34  It should import the files into the library by creating songs from a filename
# 35  Set the Artist class variable `all` equal to `[]`
# 36  create a new variable called "test_music_path" equal to "./spec/fixtures/mp3s"  **
# 37  create a new instance of MP3Importer, based on `test_music_path` and put it inside a variable called music_importer
# 38  Call the "import" method attached to that instance we just created (music_importer.import)


# What's going to happen?
#    we're going to make a bunch of songs
# How are we going to do it?
#    by filenames
# Where shall we start?
#    @path
#
#
# import calls files
#   files says "here are all the files inside of `@path`"
# next, import says "ok, for each of these filenames, create a new song by filename"
#
# So Song should automatically add a new Song instance to the `@@all` class variable
end
