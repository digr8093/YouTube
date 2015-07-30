class PageController < ApplicationController
  def Home
  end

  def about_us
  end

  def contact_us
    @form_error = false
    @submitted = params["commit"]
    @name = params["name"]
    if ( @name == "" )
      @error_message = 'Must enter your name!!'
      @form_error = true
    end

    @email = params["email"]
    if ( @email == "" )
      @error_message = 'Must enter your email!!'
      @form_error = true
    end

    @question = params["question"]
    @newsletter = params['newsletter'] == 'newsletter'
    gender = params['gender']
    @male = gender == 'male'
    @female = gender == 'female'
    @product = params['product']
  end

  def products
  end

  def newsletter
  end

  def blog
  end

  def calendar
    @time = Time.now
    @month = params['month'].to_i
    @year = params['year'].to_i

    if( !(@month >= 1 && @month <=12) )
      @month =@time.strftime( "%m").to_i
    end

    if( @year <= 0 )
      @year = @time.strftime("%Y").to_i
    end

  end

  def articles
  end

  def login
  end
end
