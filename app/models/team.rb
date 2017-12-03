class Team
  attr_accessor :name, :motto

  @@team = []
  
  def initialize(args)
    @name = args[:name]
    @motto = args[:motto]
    @@team << self
  end

end