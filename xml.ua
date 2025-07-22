GlobalAttrs ↚ {"Accesskey" "Anchor" "Autocapitalize" "Autofocus" "Class" "Contenteditable" "Dir" "Draggable" "Enterkeyhint" "Exportparts" "Hidden" "Id" "Inert" "Inputmode" "Is" "Itemid" "Itemprop" "Itemref" "Itemscope" "Itemtype" "Lang" "Nonce" "Part" "Popover" "Slot" "Spellcheck" "Style" "Tabindex" "Title" "Translate" "Virtualkeyboardpolicy" "Writingsuggestions"}
# Changes subscripts to digits and PascalCase to kebab-case
NrmId ↚ ⍜▽(+@0-@₀)⊸∊+@₀⇡10 ¯⌵/$"_-_"⊜□+1=1⊸± ⍜⊢¯
Attrs ← (
  ∩↘₁⊙⟜(⍥/$"_ _"=2⊸type ⍥⋅""◇⊸≍NaN⊢)
  ∩⌞▽⊃(¬⌕⋅NaN|⊙⍚(repr$"_"))
  ⊂∩(⍥(⊂@\s)±⊸⧻) /$"_ _"⍚$"_=_"
)
Children ← ⍥/$"__"=2⊸type
# ^0 is the tag format, ^1 is inserted before the tag call
M‼ ← /$"_\n_"⊃{
  $"┌╶╶M_"
| $"~ {_}" ⋅(/$"_|_"⍚$"_←NaN"⊂□"X"⊂GlobalAttrs)
| ⊙^1 ^0 NrmId
  $$ Impl ← $"_" Attrs ⍚NrmId Fields _
| $ └╶╶
| $"# <_> element with no attributes." NrmId
| ˙$"_ ← M_!(Impl New)"
| $"# Make _ <_> element." ⨬"a""an"∊"aeiou"⊸⊢ NrmId
| $ # Use °⊸Attr to set known attributes, or °⊸X to insert any which aren't recognized.
| $$ _! ←^ (
| $$ $"M_!(\_)"⊢
| $"˙$$ M_!(_)" ⊙$ Impl _(˜⊂"New"˜↯@⊙-1⊢⋅⊢)^!_
| $ )
} ⊙(⊜□⊸≠@\s)°□₂
# Define an HTML element taking children.
# The first pack function is an identifier mapping to the HTML tag.
# The second pack function is a space-separated list of attribute identifiers.
Elem! ←^ M‼˙$"<_\_>\_</_>""⊙Children"
# Define an HTML element which doesn't take any children.
# The first pack function is an identifier mapping to the HTML tag.
# The second pack function is a space-separated list of attribute identifiers.
Void! ←^ M‼$"<_\_ />"""

WithDoctype! ↚^ M‼˙$"<!DOCTYPE html><_\_>\_</_>""⊙Children"
WithDoctype!(Html|Xmlns)
