require_relative './base_controller.rb'

class UsersController < BaseController

  def index
    build_response user_page("this should be a list of users")
  end

  def show
    build_response user_page("this should show user ##{params[:id]}")
  end

  def new
    build_response user_page("a page to create a new user")
  end

  # not implemented for now
  def create
    redirect_to "/users"
  end

  private

  def user_page(message)
    <<~HTML
      <html>
        <head><title>A Rack Demo</title></head>
        <body>
          <h1>This is UsersController##{params[:action]}</h1>
          <p>#{message}</p>
        </body>
      </html>
    HTML
  end
end
