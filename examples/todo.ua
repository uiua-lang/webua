# Experimental!
Html ~ "../lib.ua" ~ HtmlResp NotFound Serve!

Item ← Html!(
  Div{⊓(
      Button X:{HXSwap "outerHTML" HXTarget "closest div" HXGet $"/item-tog/_"} ⟜$"Item: _"
    | Br
    )}
)

Index ← Html!(
  Html {
    Head {
      Title "Webua"
      Meta Charset:"utf-8"
      Script Src:"https://unpkg.com/htmx.org@2.0.4" {}
    }
    Body {
      H₁ "Webua Example"
      P "This is a simple example of Webua templating with HTMX!"
      Item "a"
      Item "b"
      Item "c"
    }
  }
)

Route ← ⍣(
  ⍩(HtmlResp Index) °"/"
| ⍩(HtmlResp Item) ¯ °$"/item-tog/_"
| NotFound
)

Serve!Route 8080
