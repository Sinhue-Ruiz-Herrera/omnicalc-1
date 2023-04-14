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
end
