Cso::Application.routes.draw do
  root :to => "server#welcome"

  match 'users/:username'      => 'server#user_page'
  match 'users/:username/xrds' => 'server#user_xrds'

  match 'login'  => 'server#login'
  match 'server' => 'server#index'
end
