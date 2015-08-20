== Ruby on Rails App to upload and show images using paperclip

App to upload multiple images per prodoct (max. 3 images).

* Ruby version: ruby 2.2.0p0

* Rails version: Rails 4.2.1

* Database creation
	* rake db:create
	* rake db:migrate

Model
* Product (has_many images)
* Image (belongs_to product)

Running the app:

* rails s
* localhost:3000
