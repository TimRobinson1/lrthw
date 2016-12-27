# This file is for github.com/benben/simple-ruby-facebook-example/blob/master/lib/simple-ruby-facebook-example.rb

# This command require has not been seen so far.  It appears to run files.
require 'bundler'
Bundler.require(:default)

# Assigning variables.
APP_ID     = 1234567890
# Assigning variables.
APP_SECRET = '76dhf8656a75...'

# Not yet encountered 'class' function.  From looking it up, it seems to be used to combine a group of objects into a class for having the same characteristics, a class is a combination of characteristics and functions.
# For example, your bicycle is an instance of the class of objects known as bicycles.
class SimpleRubyFacebookExample < Sinatra::Application

  use Rack::Session::Cookie, secret: 'PUT_A_GOOD_SECRET_IN_HERE'

  get '/' do
    if session['access_token']
      'You are logged in! <a href="/logout">Logout</a>'
      # do some stuff with facebook here
      # for example:
      # @graph = Koala::Facebook::GraphAPI.new(session["access_token"])
      # publish to your wall (if you have the permissions)
      # @graph.put_wall_post("I'm posting from my new cool app!")
      # or publish to someone else (if you have the permissions too ;) )
      # @graph.put_wall_post("Checkout my new cool app!", {}, "someoneelse's id")
    else
      '<a href="/login">Login</a>'
    end
  end

  get '/login' do
    # generate a new oauth object with your app data and your callback url
    session['oauth'] = Koala::Facebook::OAuth.new(APP_ID, APP_SECRET, "#{request.base_url}/callback")
    # redirect to facebook to get your code
    redirect session['oauth'].url_for_oauth_code()
  end

  get '/logout' do
    session['oauth'] = nil
    session['access_token'] = nil
    redirect '/'
  end

  #method to handle the redirect from facebook back to you
  get '/callback' do
    #get the access token from facebook with your code
    session['access_token'] = session['oauth'].get_access_token(params[:code])
    redirect '/'
  end
end
