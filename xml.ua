# Define an attribute value
#
# Expects an identifier that is the attribute name
! ←^ $"$\"_=\_\" repr"¯⌵⊢

Attr ↚ $"_=_" °⊟↘1⊢regex "([a-z-]+)=(.*)"
Tag ← $"<__>_</_>" ⤚⊙⊙∘ ⊙(
  ⍢∘⍣(1⊂⊙(□Attr°⊂))0 {}         # Extract attributes
  ⊓(⬚""/$"_ _"|⍥/$"_ _"=2⊸type) # Make inner strings
)
# Define some tag creation functions
Tags! ←^ (
  ⤙∘⟜(⍚⍜(▽⌅⊸∊"₀₁₂₃₄₅₆₇₈₉"|--@0@₀)¯⌵) # Normalize tag name
  ⍚$$ # Make a `_` element
   $$ _ ← Tag "_"
   $$ 
)
