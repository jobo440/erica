Rails.application.routes.draw do
	resources :posts

	root 'erica_pages#home'
	get 'blog' => 'posts#blog'
	post 'blog' => 'posts#blog'
	get 'teacher' => 'erica_pages#teacher'
	get 'parent' => 'erica_pages#parent'
	get 'work' => 'erica_pages#work'
	get 'services' => 'erica_pages#services'
	get 'contact' => 'erica_pages#contact'
	get 'about' => 'erica_pages#about'

end
