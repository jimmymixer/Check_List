new snippets:
rrr
eee
link

rails new Checklist
cd Checklist
# git init
# git status
# git add .
# git commit -m "initial commit"
rails generate model Item title:string description:text
rails db:migrate
rails g controller Items

gem 'simple_form', '~> 3.5'
bundle

gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
bundle
@import "bootstrap-sprockets";
@import "bootstrap";
//= require bootstrap-sprockets

rails generate simple_form:install --bootstrap

rails routes
routes.rb
  resources :items
  # this references items controller
rails routes
____________
* routes.rb
resources :items
* items_controller.rb
def index
end
*views/index.html

if adding a new html.erb page,
  def it in the controller then,
  make a new html.erb page
  make sure you have the correct route for the new html.erb
____________

def new load the create page in controllers

def create is the action for def new in contollers

def edit load the update page in controllers

def update is the action for def edit in controllers

def destroy

private
  def item_params
  def find_items

before_action
:find_item, only: [:show, :edit, :update, :destroy]

GEM devise

rails console, rails c
to exit
exit
control c

gem 'hirb'
rails c
Hirb.enable
Hirb.disable

gem 'devise', '~> 4.3'
bundle
rails generate devise:install
<p class="notice"><%= notice %></p>
<p class="alert"><%= alert %></p>
rails g devise:views
rails g devise User
rails db:migrate

add user_id to items model
rails g migration add_user_id_to_item user_id:integer
rails db:migrate

rails g migration add_completed_at_to_items completed_at:datetime
rails db:migrate

font awesome
