# Experimental!
Html ~ "../../lib.ua" ~ HtmlResp NotFound Serve!

ReadFile ← (°csv&fras"data.csv")
Index ← (
  Html!(
    Html{
      Head{
        Title "File access with webua:Index"
        Meta!°⊸Charset "utf-8"
      }
      Body{
        H₁ "Click a name to set its value"
        Table⊂Tr⍚Th⊙(/◇⊂⍚(Tr⊂∩Td A!°⊸Href$"pick/_"⟜∘°⊟)){"key" "value"} ReadFile # read out the file into a table
      }
    }
  )
) # this needs to be wrapped in parenthesis so its a nilad instead of being a constant
Pick ← Html!(
  Html{
    Head{
      Title "File access with webua:Picking a value"
      Meta!°⊸Charset "utf-8"
    }
    Body{
      H₁ $"Click a value to set _ to"˜⊙∘
      Ul/◇⊂≡⌟(Li A!°⊸Href$"/set/_/_"⊃˜⊙∘⊙◌) ⇡10⟜∘ # list out all options to be set to in a ul
    }
  }
)

Set ← (
  ◡∩□°$"_/_"
  ⍜ReadFile(⍜⊡⍜⊣⋅∘⧋(⊚=⊃⊙⋅∘⋅⊙◌⊸⊢)) # update the file
  Html!(
    Html{
      Head{
        Title "File access with webua:Setting the value"
        Meta!°⊸Charset "utf-8"
      }
      Body{
        H₁ $"In set, got key is: _ and value is: _"⊃⋅⊙∘⊙⋅◌
        A!(°⊸Href "/") "Go Home"
      }
    }
  )
)
Route ← ⍣(
  ⍩(HtmlResp Pick) °$"/pick/_"
| ⍩(HtmlResp Set) °$"/set/_"
| ⍩(HtmlResp Index) °$"/"
| NotFound
)
Serve!Route 8080
