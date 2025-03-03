~ "libback.ua" ~ Response Serve!

Home ← (
  Response "200 OK" "text/plain" utf₈"home route"
)

User ← (
  Response "200 OK" "text/plain" utf₈ $"user is: _"
)

NotFound ← (
  Response "404 Not Found" "text/plain" utf₈"Not Found"
)

Route ← ⍣(
  ⍩Home°"/home"
| ⍩User°$"/user/_"
| NotFound
)

Serve!(Route)
