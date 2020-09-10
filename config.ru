use Rack::Static,


:urls => ["/images", "/assets/js", "/assets/css", "/assets/sass","/assets/fonts","/layouts","/intellectual-property","/module3", "/module1", "/module2", "/canvas", "/comments", "/news", "/lean-canvas", 
  "/man-structure", "/privacy-policy"],
:root => "."

run lambda { |env|
  [
      200,
      {
          'Content-Type'  => 'text/html',
      },
      File.open('home.html', File::RDONLY)
  ]
}
