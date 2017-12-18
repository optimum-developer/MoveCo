Rails.application.routes.draw do
  root to: 'home#coming_soon'
  # root to: 'home#index'
  get 'home/about_us'=>'home#about_us' 
  get 'home/service'=>'home#service'
  get 'home/service_residential_moving'=>'home#service_residential_moving'
  get 'home/service_office_moving'=>'home#service_office_moving'
  get 'home/service_piano_moving'=>'home#service_piano_moving'
  get 'home/service_furniture_moving'=>'home#service_furniture_moving'
  get 'home/service_pool_moving'=>'home#service_pool_moving'
  get 'home/service_interstate_moving'=>'home#service_interstate_moving'
  get 'home/service_packing_moving'=>'home#service_packing_moving'
  get 'home/service_secure_storage_moving'=>'home#service_secure_storage_moving'
  #get 'home/service_single'=>'home#service_single'
  get 'home/free_quote'=>'home#free_quote'
  get 'home/plan_moving'=>'home#plain_moving'
  get 'home/shortcodes_teasers'=>'home#shortcodes_teasers'
  get 'home/shortcodes_buttons'=>'home#shortcodes_buttons'
  get 'home/shortcodes_socialicons'=>'home#shortcodes_socialicons'
  get 'home/shortcodes_tabs'=>'home#shortcodes_tabs'
  get 'home/shortcodes_bootstrap'=>'home#shortcodes_bootstrap'
  get 'home/shortcodes_typography'=>'home#shortcodes_typography'
  get 'home/shortcodes_widgets'=>'home#shortcodes_widgets'
  get 'home/shortcodes_animation'=>'home#shortcodes_animation'
  get 'home/shortcodes_icons'=>'home#shortcodes_icons'
  get 'home/contact'=>'home#contact'
  get 'home/book_online'=>'home#book_online_detail'

  get 'home/why_us'=>'home#why_us'
  get 'home/pricing'=>'home#pricing'
  post 'home/call_me_back' => 'home#call_me_back'

  resources :request_quotes
  resources :contacts
  resources :book_online_details


  
















  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
