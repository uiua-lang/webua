# Experimental!

# a basic web server that responds a path passed to it with the correspodning file

Html ~ "../../lib.ua" ~ HtmlResp NotFoundHtml Serve!

Route ← ⍣(
  ⍩(HtmlResp&fras"index.html")°"/"               # give index.html for /
| °$"/_"                                         # remove /
  ⍣⍜°$"_.html"∘$"_/index.html"                   # if file is folder, return that folder's index
  ⍩⍣(HtmlResp&fras)(NotFoundHtml&fras"404.html") # if file doesn't exist, return 404.html
)
Serve!Route 8080
