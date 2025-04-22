Xml ~ "xml" ~ ! Tags!
~ "xml" ~ ! Tags!

Listener ← &tcpl "0.0.0.0:8080"

HXGet    ← $$ hx-get="_"
HXPost   ← $$ hx-post="_"
HXSwap   ← $$ hx-swap="_"
HXTarget ← $$ hx-target="_"

# ? Status Mime Bytes
Response ← (
  ⊙⊙(⧻.)
  $$ HTTP/1.1 _
  $$ Content-Type: _
  $$ Content-Length: _
  $$ 
  $$ 
  ⊂ utf₈
)

ResHTML ← (Response "200 OK" "text/html" utf₈)

Respond! ← ◌pool(
  &p $"Request from _" &tcpaddr.
  # Extract path from request
  °□⊡1 ⊜□≠@\s . &ru "\r\n\r\n".
  &p $"Request:\n_".

  ^0
  &p⊸($"Response: _ bytes" ⧻)

  # Send response
  ⊃⋅&cl&w
)

Serve! ← ⍢(⍣Respond!(^0)⋅&p &tcpa Listener)1

NotFound ← (
  Response "404 Not Found" "text/plain" utf₈"Not Found"
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
