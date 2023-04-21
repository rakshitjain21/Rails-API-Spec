Rails.application.routes.draw do
  get('status' => 'status#index')
  get('console' => 'consoles#index')
end
