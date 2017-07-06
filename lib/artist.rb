class Artist

	attr_accessor :name, :songs

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
		self.save
	end

	def self.all
		@@all
	end

	def save
		@@all << self
	end

	def add_song(song)
		@songs << song
	end

	def print_songs
		@songs.each do |song|
			puts song.name
		end
	end

	def self.exists?(name)
		existant_artist = nil

		@@all.each do |artist|
			if artist.name == name
				existant_artist = artist
			end
		end
		existant_artist
	end

	def self.find_or_create_by_name(name)
		new_or_existant_artist = exists?(name)
		#puts "name: #{name}"
		#puts "new_or_existant_artist: #{new_or_existant_artist}"

		if new_or_existant_artist
			new_or_existant_artist
		else
			Artist.new(name)
		end
	end

end