class Pokemon
  
  attr_accessor :id, :name, :type, :dbm, :hp
  
  def initialize(id, name, type, db)
    @id = id
    @name = name
    @type = type
    @db = db
    @hp = hp
  end
  
  def self.save(name, type, db)
    sql = <<-SQL
      INSERT INTO pokemon (name, type) VALUES (?, ?);
    SQL
    
    db.execute(sql, name, type)
    
  end
  
  
end
