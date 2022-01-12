Rails.application.routes.draw do
  get "/black_market" => "products#black_market_method"
  get "/heart" => "products#heart_method"
  get "/brain" => "products#brain_method"
  get "/foot" => "products#foot_method"
  get "/gallbladder" => "products#gallbladder_method"

end