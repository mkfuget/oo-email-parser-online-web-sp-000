# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :email_address
  
  def initialize(name)
    @email_address = name 
  end 
  
  def parse 
    adress_array = @email_address.split(/[,\s]+/)
    out_array = []
    adress_array.each do |address|
      if(!out_array.include?(address))
        out_array.push(address)
      end 
    end 
    return out_array
  end 
end