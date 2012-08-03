module PageHelper

  def visit page_class, &block
    on page_class, true, &block
  end

  def on page_class, visit=false, &block
    @current_page = page_class.new @browser, visit
    block.call @current_page if block
    @current_page
  end

  def wait_until(timeout=30, message=nil, &block)
    self.wait_until(timeout, message, &block)
  end

end