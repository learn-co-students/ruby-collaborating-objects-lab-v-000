
class MP3Importer

	attr_accessor :path

	def initialize(path)
		@path = path
	end

	def files

		files = Dir.glob("#{@path}/*.mp3")
		files.collect do |file|
			file.gsub("#{@path}/", "")
		end
	end

	def import
		files = self.files
		files.each do |file|
			file = file.split(" - ")
			song = Song.new(file[1])
			song.artist = Artist.new(file[0]) unless Artist.all.detect{|artist| artist.name == file[0]}
		end
	end
end

