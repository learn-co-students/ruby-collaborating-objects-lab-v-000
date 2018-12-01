class MP3Importer
	attr_accessor :path

# parses a directory of files
# sends the filenames to Song class
# to create a music library with
# artists that are unique

# path will be ./spec/fistures/mp3s'
# code must respond to:

	#path = \Users\pm_local\.atom\.learn-ide\home\pmknyc\ruby-collaborating-objects-lab-v-000

# MP3Importer.new('./spec/fixtures').import
# takes string path arg, must add on wildcard value
# for all mp3 files , then in #files parse out filename
	def initialize(path)
	# path attribute that gets set on initialization
		@path = path
	end

# ??at #initialize, new importer has a path
# then when run #import, that method calls the #files method
# to look in object's path,parse out only the filename, then #import
# proceeds to create new Song from filename
	def files
		files = []
		ls "#{@path}/*.mp3"
	end

	def import
    glob( pattern, [flags] ) → matches
		files.each {|filename| Song.new_by_filename(filename)}
	end

#class end below
end
