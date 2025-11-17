class InventoryAPI
  attr_reader :db, :holds, :bikes

  def initialize(db:)
    @db = db
    @holds = {}   # { hold_id => { bike_id:, user_id:, from:, to: } }
    @bikes = {}   # { bike_id => { status:, price:, ... } }
  end

  def list_available
  end

  def available?(bike_id)
  end

  def reserve(bike_id:, user_id:, from:, to:)
  end

  def commit_reservation(hold_id:)
  end

  def release_hold(hold_id:)
  end

  def update_status(bike_id:, status:)
  end
end

class OrderManager
  attr_reader :inventory, :payment, :pricing, :orders

  def initialize(inventory:, payment:, pricing:)
    @inventory = inventory
    @payment = payment
    @pricing = pricing
    @orders = {} # { order_id => {...} }
  end

  def quote_rental(bike_id:, days:)
  end

  def submit_rental(user_id:, bike_id:, days:, payment_method:)
  end

  def cancel_rental(order_id:)
  end

  def get_order(order_id:)
  end
end