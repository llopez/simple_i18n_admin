Rails.application.routes.draw do
  namespace :simple_i18n_admin do
    resources :translations do
      get :search, :on => :collection
    end
    root :to => "translations#index"
  end
end
