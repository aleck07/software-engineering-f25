class Logger
  def event(s)
    puts s
  end

  def warning(s)
    warn s
  end
end

$logger = Logger.new

class Divider
  def divide(a, b, logger)
    if b == 0
      logger.warning("division by zero")
      return nil
    end
    logger.event("dividing #{a} by #{b}")
    a / b
  end
end

d = Divider.new

d.divide(1,2, $logger)
d.divide(10,5, $logger)
d.divide(99,0, $logger)