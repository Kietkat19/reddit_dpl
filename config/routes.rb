Rails.application.routes.draw do
  # root route
        # controller#action 
    root 'subs#index'

  # resources 
    # resources :controller
    # only: [:index, :show]
    # except: [:index, :show]
    resources :subs do
      resources :topics
    end

    resources :topic do 
      resources :comments
    end

  # customs routes 
    # http ver 'controller/action', as: bananas, to:
    # get '/edit', to: 'subs#edit'
    # get '/show', to: 'subs#show'
                # placeholder
    # delete '/subs/:id', to:'subs#destroy'

    # /subs/1/topics/1
    # /subs/:sub_id/topics/:id
end
