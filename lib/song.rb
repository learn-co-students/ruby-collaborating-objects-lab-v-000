class Song
	attr_accessor :name, :artist, :filename

	def initialize(name)
		@name = name
	end

	def self.new_by_filename(filename)
		song = self.new(filename)
		song.name = filename.split(" - ")[1]
	end
end