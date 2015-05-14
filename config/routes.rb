Rails.application.routes.draw do
	resources :posts
	get 'show_all_posts' => 'posts#show_all_posts'

	root 'erica_pages#home'
	get 'blog' => 'posts#blog'
	post 'blog' => 'posts#blog'
	get 'teacher' => 'posts#teacher'
	get 'parent' => 'posts#parent'
	get 'work' => 'erica_pages#work'
	get 'services' => 'erica_pages#services'
	get 'contact' => 'erica_pages#contact'
	get 'about' => 'erica_pages#about'

end
