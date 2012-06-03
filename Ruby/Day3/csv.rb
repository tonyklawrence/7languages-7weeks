# Modify the CSV application to support an each method to return a CsvRow object. 
# Use method_missing on that CsvRow to return the value for the column for a given heading.

# For example, for the file:
# one, two
# lions, tigers

module ActsAsCsv
  include Enumerable
  
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end

  module InstanceMethods
    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')
      
      file.each do |row|
        @csv_contents << row.chomp.split(', ')
      end
    end

    attr_accessor :headers, :csv_contents
    def initialize
      read
    end 
    
    
    def each &block
      csv_contents.each do |row| 
        cr = CsvRow.new(headers, row)
        block.call(cr)
      end
    end
  end
  
  class CsvRow
    def initialize(headers, contents)
      @headers = headers
      @contents = contents
    end
    
    def method_missing name, *args
      index = @headers.index(name.to_s)
      return @contents[index] unless index == nil
      super.method_missing(name, args)
    end
  end
end

class RubyCsv # no inheritance! You can mix it in include ActsAsCsv
  include ActsAsCsv  
  acts_as_csv
end

m = RubyCsv.new
puts m.headers.inspect
puts m.csv_contents.inspect

# allow an API that works like this:
# csv = RubyCsv.new
# csv.each {|row| puts row.one}
# This should print "lions".

csv = RubyCsv.new
csv.each {|row| puts row.one}