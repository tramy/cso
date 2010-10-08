Cso::Application.routes.draw do
  root :to => "server#welcome"

  match 'server/xrds'          => 'server#idp_xrds'
  match 'users/:username'      => 'server#user_page'
  match 'users/:username/xrds' => 'server#user_xrds'

  # Install the default route as the lowest priority.
  match ':controller(/:action(/:id(.:format)))'
end
