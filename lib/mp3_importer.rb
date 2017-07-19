class MP3Importer

	attr_accessor :path

	def initialize(path)
		@path = path
	end

	def files
		files = Dir.entries(@path)
		files.delete(".")
		files.delete("..")
		files
		#binding.pry
	end

	def import
		files = self.files
		songs = []

		files.each do |filename|
			#binding.pry
			songs << Song.new_by_filename(filename)
		end
		songs
		#binding.pry
	end
end
