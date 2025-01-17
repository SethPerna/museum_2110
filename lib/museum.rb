class Museum
  attr_reader :name, :exhibits, :patrons
  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    patron_rec = []
    @exhibits.each do |exhibit|
      patron.interests.each do |interest|
        if exhibit.name == interest
          patron_rec << exhibit
        end
      end
    end
    patron_rec
  end

  def admit(patron)
    @patrons << patron
  end

  def patrons_by_exhibit_interest
    patron_hash = {}
    @exhibits.find_all do |exhibit|
      @patrons.map do |patron|
        patron.interests.find_all do |interest|
          #require "pry"; binding.pry
          if interest == exhibit.name
            patron_hash[exhibit] = [patron]
          else
          end
        end
      end
    end
    require "pry"; binding.pry
    patron_hash
  end #man so close!!!!! I get a hash that doesnt repeat for its value it only takes on patron instewad of two for dead_sea_scrolls

end
