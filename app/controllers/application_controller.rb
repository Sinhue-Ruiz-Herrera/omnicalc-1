class ApplicationController < ActionController::Base
  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb" })
  end

  def calculate_square
    #Parameters: {"elephant"=>"9000"}
    @num = params.fetch("elephant").to_f
    @square_of_num = @num ** 2

    render({ :template => "calculation_templates/square_results.html.erb" })
  end

  def random_new
    render({ :template => "calculation_templates/rand_new.html.erb" })
  end

  def calculate_random
    @lower = params.fetch("elephant").to_f
    @upper = params.fetch("turtle").to_f
    @result = rand(@lower..@upper)
    render({ :template => "calculation_templates/rand_results.html.erb" })
  end

  def square_root_new
    render({ :template => "calculation_templates/square_root_new.html.erb" })
  end

  def square_root_results
    @num = params.fetch("elephant").to_f
    @square_root = Math.sqrt(@num).round(4)
    render({ :template => "calculation_templates/square_root_results.html.erb" })
  end

  def payment_new
    render({ :template => "calculation_templates/payment_new.html.erb" })
  end

  def payment_results
    @num_apr = params.fetch("apr_amount").to_f
    @apr = (@num_apr.to_s(:percentage) / 100) / 12
   
    @periods = params.fetch("periods").to_f
    @principal = params.fetch("principal").to_f

    @total_payment = ((@apr * @principal) / (1 - (1 + @apr) ** (-@periods*12 ))).to_s(:currency, { :precision => 2 })
    render({ :template => "calculation_templates/payment_results.html.erb" })
  end
end
