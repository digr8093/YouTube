class PageController < ApplicationController
  def Home
  end

  def about_us
  end

  def contact_us
  end

  def products
  end

  def newsletter
  end

  def blog
  end

  def calendar
    @time = Time.now
    @month = 7
    @year = 2015

  end

  def articles
  end

  def login
  end
end
