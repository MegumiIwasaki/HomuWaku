Rails.application.routes.draw do

  devise_for :teachers, controllers: {
  sessions:      'teachers/sessions',
  passwords:     'teachers/passwords',
  registrations: 'teachers/registrations'
}
  devise_for :students, controllers: {
  sessions:      'students/sessions',
  passwords:     'students/passwords',
  registrations: 'students/registrations'
}

  root 'abouts#about'
  get '/home' => 'homes#home', as: 'home'
  get 'students/my_page' => 'students#show', as: 'student_my_page'
  patch 'students/withdraw' => 'students#withdraw', as: 'withdraw_student'
  put 'students/withdraw' => 'students#withdraw'
  resources :students, only: [:edit, :update]
  resources :submissions, except: [:destroy]
  resources :keywords, only: [:new, :create]
  resources :post_homeworks, only: [:index, :show]


  get 'teachers/my_page' => 'teachers#show', as: 'teacher_my_page'
  patch 'teachers/withdraw' => 'teachers#withdraw', as: 'withdraw_teacher'
  put 'teachers/withdraw' => 'teachers#withdraw'
  resources :teachers, only: [:edit, :update]

  namespace :teachers do
    get 'teachers/home' => 'teachers#show', as: 'mypage'
    resources :post_homeworks, except: [:destroy]
    resources :submissions, except: [:destroy, :create, :new]
    resources :students, only: [:index, :show]
    resources :keywords, only: [:index, :show, :update]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
