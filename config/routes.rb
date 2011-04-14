SimpleI18nAdmin::Application.routes.draw do
  resources :translations do
    get :search, :on => :collection
  end
  root :to => "translations#index"
end
