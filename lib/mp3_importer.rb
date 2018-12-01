require 'pry'
class MP3Importer
	attr_accessor :path

# parses a directory of files
# sends the filenames to Song class
# to create a music library with
# artists that are unique

# path will be ./spec/fistures/mp3s'
# code must respond to:

# MP3Importer.new('./spec/fixtures').import
# takes string path arg, must add on wildcard value
# for all mp3 files , then in #files parse out filename
	def initialize(path)
	# path attribute that gets set on initialization
		@path = path
	end

# ??at #initialize, new importer has a path
# then when run #import, that method calls the #files method
# to look in object's path,parse out only the filename then import
# proceeds to create new Song from filename

  def files
    #Dir.chdir("#{@path}") #change working dir to path given at initialize
    Dir["#{@path}/*.mp3"]
    #files
    #= files.map do |string|
    #  string.split("/").last
    # end
binding.pry
	end

	def import
		files.each {|filename| Song.new_by_filename(filename)}
	end

#class end below
end
