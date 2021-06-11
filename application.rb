class Application
  def call(env)
    ['200', {'Content-Type' => 'text/html'}, ["Hello from the App!"]]
  end
end
