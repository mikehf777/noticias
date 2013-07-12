Toledo::Application.routes.draw do
    devise_for :users
  	root :to =>redirect("/noticias")
    namespace :noticias do
      	resources :users
      	root :to =>redirect("/users/sign_in")
      	authenticated :user do
      		match'dashboard' => 'home#index'
          match 'busqueda' => 'searchs#busqueda'
          resources :notes do 
            get :edita_avance,on: :member
            put :update_avance,on: :member
            get :notas_terminadas , on: :collection
            get :capturistas_tab , on: :collection
            get :notes_by_plaza , on: :member
            get :show_note , on: :member
            get :note_finalizada , on: :member
            end
          resources :notifications do
            get :comisiones_recibidas, on: :collection
            get :usuarios_comisionados, on: :collection
            get :enviar_comisiones,on: :member
            end
          resources :messages
          resources :local_news do
            get :messages , on: :member 
            get :termina_noticiero , on: :member
            get :new_peninsular , on: :collection
            end
    		end
  	end
end