# Experimental!
~ "libback.ua" ~ Response Serve!
~ "libfront.ua" ~ ! A B Body Br Button Div Em Form Head Html H₁ H₂ H₃ H₄ H₅ H₆ I Li Meta Ol P Script Span Strong Style Table Title Ul W

HXGet  ← $$ hx-get="_"
HXPost ← $$ hx-post="_"
HXSwap ← $$ hx-swap="_"

ResHTML ← (Response "200 OK" "text/html" utf₈)

~Item {name} (
    W {
      Button {HXSwap "outerHTML" HXGet $"/item-tog/_" name $"Item: _" name}
      # Br {}
    }
  )

Index ← (
  Html {
    Head {
      Title "Webua"
      Script {!src "https://unpkg.com/htmx.org@2.0.4"}
    }
    Body {
      H₁ "Webua Example"
      P "This is a simple example of Webua templating."
      Item "a"
      Item "b"
      Item "c"
    }
  }
  ResHTML
)

RespondItem ← (
  Item
  ResHTML
)

NotFound ← (
  Response "404 Not Found" "text/plain" utf₈"Not Found"
)

Route ← ⍣(
  ⍩Index°"/"
| ⍩RespondItem¯ ?°$"/item-tog/_"
| NotFound
)

Serve!(Route)
