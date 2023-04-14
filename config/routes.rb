Rails.application.routes.draw do
  get("/square/new", { :controller => "application", :action => "blank_square_form" })
  get("/square/results", { :controller => "application", :action => "calculate_square" })

  get("/random/new", { :controller => "application", :action => "random_new" })
  get("/random/results", { :controller => "application", :action => "calculate_random" })

  get("/square_root/new", { :controller => "application", :action => "square_root_new" })
  get("/square_root/results", { :controller => "application", :action => "square_root_results" })

  get("payment/new", { :controller => "application", :action => "payment_new" })
  get("payment/results", { :controller => "application", :action => "payment_results"})
  
end
