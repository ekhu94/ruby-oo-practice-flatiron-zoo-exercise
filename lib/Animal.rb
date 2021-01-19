class Animal
    @@all = []

    def self.all
        @@all
    end

    def self.find_by_species(species)
        self.all.select { |animal| animal.species == species }
    end

    attr_reader :species, :nickname
    attr_accessor :weight, :zoo

    def initialize(species, weight, nickname)
        @species, @weight, @nickname = species, weight, nickname
        save
    end

    def save
        self.class.all << self
    end

    def join_zoo(zoo)
        self.zoo = zoo
    end

    def zoo
        self.zoo
    end
end