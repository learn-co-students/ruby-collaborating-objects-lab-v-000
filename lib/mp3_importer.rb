class MP3Importer
	attr_accessor :path, :files
	def initialize(path)
		@path = path
		self.files
	end

	def files
		@files = Dir.glob(File.join(@path, "*"))
		@files= @files.map{|e| e.split("/")[-1]}
	end

	def import
		@files.each{|a| Song.new_by_filename(a)}
	end

end