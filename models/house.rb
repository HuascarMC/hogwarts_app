class House
  attr_reader :id, :name, :logo

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @logo = options['logo']
  end

  def save()
    sql = "INSERT INTO houses (name, logo) VALUES ($1, $2) RETURNING *"
    values = [@name, @logo]
    @id = SqlRunner.run(sql, values)[0]['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM houses"
    values = []
    results = SqlRunner.run(sql, values)
    houses = results.map{|house| House.new(house)}
    return houses
  end

  def self.find(id)
    sql = "SELECT * FROM houses WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values)[0]
    house = House.new(result)
    return house
  end
end
