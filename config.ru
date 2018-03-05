use Rack::Static,


:urls => ["/images", "/assets/js", "/assets/css", "/assets/sass","/assets/fonts","/layouts",
  "/leadership","/personal","/management","/canvas", "/comments", "/news", "/steps", "/man-structure"],
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
