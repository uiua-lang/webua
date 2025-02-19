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
| Form
| Head
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

$Users {"Alice" "Bob" "Carol"}
Html {
  Head {
    Title "Example"
    Meta {!charset"utf-8"}
    Style {!href"style.css"}
  }
  Body {
    H₁ "Webua Example"
    P "This is a simple example of Webua templating."
    P {"Web dev for " A {!href"uiua.org" "Uiua"} "!"}
    Br {}
    H₂ "Users"
    Ul ⍚Li
  }
}
