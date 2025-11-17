class DataManager
  def initialize(production: true)
    if production
      @network_connection = NetConnection.new("example.com")
    else
      @network_connection = MockNetConnection.new
    end
  end

  def send_request(r)
    @network_connection.send(r)  # Send some data
  end

  def recv_response()
    @network_connection.recv()  # Return the received data
  end
end

class MockNetConnection
  def send(r)

  end

  def recv()
    puts "RESPONSE: hello!"
  end
end

# TODO: Make DataManager behave differently if testing
testing = true
if testing
    dm = DataManager.new(production: false)
else
    dm = DataManager.new(production: true)
end

dm.send_request("REQUEST: good things")
good_things = dm.recv_response()
