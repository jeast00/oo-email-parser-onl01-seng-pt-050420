# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser

  attr_accessor :email

  def initialize(email)
    @email = email
  end

  def parse
    if @email.match(", ")
      @email.split(", ")
    elsif @email.match(" ")
      @email.split(" ")
    elsif @email.match(", ") && @email.match(" ")
      @email.split
    end
  end


end
