class MusicLibraryController
  
  def initialize(path)
    importer = MusicImporter.new(path = "./db/mp3s")
  end
  
end