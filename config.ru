use Rack::Static,


:urls => ["/assets/images", "/assets/js", "/assets/css", "/assets/sass","/assets/fonts"],
:root => "."

run lambda { |env|
  [
      200,
      {
          'Content-Type'  => 'text/html',
      },
      File.open('index.html', File::RDONLY)
  ]
}