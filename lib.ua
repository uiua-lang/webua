Xml ~ "xml" ~ ! Tags!

~ "xml" ~ ! Tags!

Tags!(
  A
| B
| Body
| Br
| Button
| Div
| Em
| Head
| H₁
| H₂
| H₃
| H₄
| H₅
| H₆
| I
| Form
| Li
| Ol
| P
| Span
| Strong
| Table
| Ul
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
