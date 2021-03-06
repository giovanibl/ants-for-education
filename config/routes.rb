Rails.application.routes.draw do

  get 'board_generator/index'
  get 'board_generator/build'

  get 'class_schedule/edit'

  devise_for :users

  root 'welcome#index'

  get 'series/index'
  get 'series/sync'

  get 'courses/index'
  get 'courses/sync'

  get 'sync/index'

  get 'classrooms/sync'

  resources :ieducar_configurations, only: [:edit, :update]
  resources :class_schedule, only: [:edit, :update]
  resources :classrooms, only: [:index, :show] do
    collection do
      post 'edit_disciplines'
    end
  end

  resources :schools, only: [ :none ] do
    collection do
      get 'index'
      get 'sync'
    end
  end

  resources :teachers, only: [ :show ] do
    collection do
      get 'index'
      get 'sync'
    end
  end
end
