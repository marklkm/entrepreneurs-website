use Rack::Static,


:urls => ["/images", "/assets/js", "/assets/css", "/assets/sass","/assets/fonts","/layouts",
  "/creative-capital","/intellectual-property","/opportunity-generation", "/pathways", "/planning-venture", "/canvas", "/comments", "/news", "/steps",
  "/man-structure", "/gallery.html"],
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
