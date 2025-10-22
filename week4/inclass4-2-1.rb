class File
  def initialize(file_name)
    @file_name = file_name
    @file_pointer
    @file_pointer = open_file(@file_name)
  end
 
  def read
    read_data(@file_pointer)
  end

  def write(data)
    write_data(@file_pointer, data)
  end

  def close
    close_file(@file_pointer)
  end
end

file = File.new("example.txt")
file.write("Hello!")
puts file.read
file.close