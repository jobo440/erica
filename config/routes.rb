Rails.application.routes.draw do
root 'erica_pages#home'
get 'blog' => 'erica_pages#blog'
get 'teacher' => 'erica_pages#teacher'
get 'parent' => 'erica_pages#parent'
get 'work' => 'erica_pages#work'
get 'services' => 'erica_pages#services'
get 'contact' => 'erica_pages#contact'
get 'about' => 'erica_pages#about'
end
