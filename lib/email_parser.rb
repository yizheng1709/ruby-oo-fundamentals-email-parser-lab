# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :string_of_emails

    def initialize(string_of_emails)
        @string_of_emails = string_of_emails
    end 
# emails = "avi@test.com, arel@test.com test@avi.com, test@arel.com"
    def parse
        array = []
            @string_of_emails = @string_of_emails.split(" ")
            @string_of_emails.each do |email|
                if !array.include?(email)  
                array << email.delete(",").strip 
                end  
            end 
        array 
    end 
end 