class Chemical
  include HTTParty
  
  base_uri "cactus.nci.nih.gov/chemical/structure/"
  
  attr_accessor :name, :stdinchikey, :smiles
  
  def initialize(name, stdinchikey=nil, smiles=nil)
    @name = name
    @stdinchikey = name_to_stdinchikey()
    @smiles = name_to_smiles()
  end

  def name_to_stdinchikey()
    response = self.class.get("/#{@name.gsub(/\s+/, "")}/stdinchikey")
    if response.parsed_response =~ /.*=(.*)/
      @stdinchikey = $1
    else
      puts "can't parse strucutre"  
    end
  end
  
  def name_to_smiles()
    response = self.class.get("/#{@name.gsub(/\s+/, "")}/smiles")
    @smiles = response.parsed_response
  end
  
end