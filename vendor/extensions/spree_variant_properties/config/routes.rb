Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :products do
      resources :variants do
        resources :variant_properties
      end
    end
  end

  match 'products/:id/variants/:variant_id/show_variant_properties', :to => 'spree/products#show_variant_properties', :as => :show_variant_properties, :via => :get
end
