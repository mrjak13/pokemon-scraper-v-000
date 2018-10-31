class Pokemon
  attr_accessor :id, :name, :type, :db

  @@all =[]

  def initialize(id: nil, name: nil, type: nil, db: nil)
    @id = id
    @name = name
    @type = type
    @@all << self
  end

  def self.save(name, type, db)
    binding.pry
    db.execute("INSERT INTO pokemon (name, type) VALUES(?, ?)
    WHERE name == ?", name, type, name)
  end

  def self.find(id, db)
    var = db.execute("SELECT pokemon.* FROM pokemon").flatten
    Pokemon.new(id: var[0], name: var[1], type:var[2])
  end

  def alter_hp(hp)
    binding.pry

  end

end
