Rails.application.routes.draw do
  #get 'instructors/index'
  #get 'instructors/new'
  #get 'instructors/edit'
  #get 'instructors/show'
  #get 'instructors/update'
  #get 'instructors/destroy'
  #get 'instructors/create'
  #get 'students/index'
  #get 'students/new'
  #get 'students/edit'
  #get 'students/show'
  #get 'students/update'
  #get 'students/destroy'
  #get 'students/create'
  resources :students

  resources :instructors do 
    resources :students
  end

  root 'students#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
