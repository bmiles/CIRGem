class Chemical
  include HTTParty
  
  base_uri "cactus.nci.nih.gov/chemical/structure/"
  
  attr_accessor :structure_identifier, :stdinchikey
  
  def initialize(structure_identifier, stdinchikey=nil)
    @structure_identifier = structure_identifier
    @stdinchikey = nil
  end

  def inchikey()
    response = self.class.get("/#{@structure_identifier}/stdinchikey")
    if response.parsed_response =~ /.*=(.*)/
      @stdinchikey = $1
    else
      puts "can't parse strucutre"  
    end
  end
end