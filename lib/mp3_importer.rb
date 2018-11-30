class MP3importer
# parses a directory of files
# sends the filenames to Song class
# to create a music library with
# artists that are unique

# local path is C:\Users\pm_local\.atom\.learn-ide\home\pmknyc\ruby-collaborating-objects-lab-v-000
	attr_accessor :path

# code must respond to:
# MP3Importer.new('./spec/fixtures').import
	#path = \Users\pm_local\.atom\.learn-ide\home\pmknyc\ruby-collaborating-objects-lab-v-000
	def initialize(path)
	# path attribute that gets set on initialization
		@path = "#{path}/*.mp3"
	end

	def files

	end

	def import(filenames_list)
		filenames_list.each {|filename|
	Song.new_by_filename(some_filename)}

	end
end
