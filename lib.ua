Xml ~ "xml" ~ ! Tags!
~ "xml" ~ ! Tags!

HXGet    ← $$ hx-get="_"
HXPost   ← $$ hx-post="_"
HXSwap   ← $$ hx-swap="_"
HXTarget ← $$ hx-target="_"

# Construct an HTTP response
# ResponseBytes ? Status Mime Bytes
Response ← (
  ⊙⊙⊸⧻
  $$ HTTP/1.1 _
  $$ Content-Type: _
  $$ Content-Length: _
  $$ 
  $$ 
  ⊂ utf₈
)
# Construct a simple text HTTP response
TextResp ← Response "200 OK" "text/html" utf₈
# A simple not found HTTP response
NotFound ← (Response "404 Not Found" "text/plain" utf₈"Not Found")
# Construct a simple HTML HTTP response
HtmlResp ← Response "200 OK" "text/html" utf₈

Respond! ← (
  &w⊸(
    ⟜(&p $"Request from _" &tcpaddr)
    °□⊡1 ⊜□⊸≠@\s &ru "\r\n\r\n"
    ⟜(&p $"Request:\n_")
    ^0
    ⟜(&p $"Response: _ bytes" ⧻)
  )
)

Sig! ↚^ ⋅⊢

# Start a server on the given port.
# The function will be called on the TCP socket for each incoming connection.
# ? Port
Serve! ← (
  &tcpl $"0.0.0.0:_"
  ⟜(&p $"Server started on _" &tcpaddr)
  ⍢(⍜&tcpa(⍣Respond!^0⋅&p))1
)

Tags!(
  A
| B
| Body
| Br
| Button
| Div
| Em
| Form
| Input
| Head
| Link
| Details
| Summary
| Html
| H₁
| H₂
| H₃
| H₄
| H₅
| H₆
| I
| Li
| Meta
| Ol
| P
| Span
| Strong
| Style
| Table
| Title
| Ul
| Script
)

┌─╴test
  ⍤⤙≍ "<p>abc</p>" P "abc"
  ⍤⤙≍ "<p>abc</p>" P {"abc"}
  ⍤⤙≍ "<h2>x</h2>" H₂ "x"
  ⍤⤙≍ "<h2>x</h2>" H₂ {"x"}
  ⍤⤙≍ "<p a=3 b=5 c=\"wow\">abc</p>" P {!a+1 2 !b5 !c"wow" "abc"}
  ⍤⤙≍ "<p><span>text</span></p>" P Span "text"
  ⍤⤙≍ "<p><span>text</span></p>" P {Span {"text"}}
  ⍤⤙≍ "<p><span>text</span></p>" P {Span {"text"}}
└─╴
