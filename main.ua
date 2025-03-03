~ "libback.ua" ~ Response Serve!

Route ← (
  Response "200 OK" "text/plain" utf₈$"Requested from route: _"
)

Serve!(Route)
