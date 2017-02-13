class Song

	attr_accessor :name, :artist

	def initialize(name)
		@name = name
	end

	def self.new_by_filename(file)
		temp=file.split(" - ")
		temp[1] = temp[1].split(".")[0]
		new_song = Artist.find_or_create_by_name(temp[0]).add_song(temp[1])
		new_song
	end

end