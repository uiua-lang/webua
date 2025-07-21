GlobalAttrs ↚ {"Accesskey" "Anchor" "Autocapitalize" "Autofocus" "Class" "Contenteditable" "Dir" "Draggable" "Enterkeyhint" "Exportparts" "Hidden" "Id" "Inert" "Inputmode" "Is" "Itemid" "Itemprop" "Itemref" "Itemscope" "Itemtype" "Lang" "Nonce" "Part" "Popover" "Slot" "Spellcheck" "Style" "Tabindex" "Title" "Translate" "Virtualkeyboardpolicy" "Writingsuggestions"}
# Changes subscripts to digits and PascalCase to kebab-case
NrmId ↚ ⍜▽(+@0-@₀)⊸∊+@₀⇡10 ¯⌵/$"_-_"⊜□+1=1⊸± ⍜⊢¯
Attrs ← (
  ∩↘₁⊙⟜(⍥/$"_ _"=2⊸type ⍥⋅""◇⊸≍NaN⊢)
  ∩⌞▽⊃(¬⌕⋅NaN|⊙⍚(repr$"_"))
  ⊂∩(⍥(⊂@\s)±⊸⧻) /$"_ _"⍚$"_=_"
)
Children ← ⍥/$"__"=2⊸type
# ^0 maps a tag name to the appropriate format string.
M! ← (
  ⊙(⊂□"X" ⊂GlobalAttrs ⊜□⊸≠@\s)°□₂
  ⊃(NrmId|∘|/$"_|_"⋅⍚$"_ ← NaN"|^0NrmId|repr⋅⍚NrmId)
  $$ # Make a <_> element.
  $$ # Use Attr:"value" to set attributes, or X:"my-prop=\"value\"" to insert any which are unrecognized.
  $$ ~_ {_} $"_" Attrs _
)
# Define an HTML element taking children.
# The first pack function is an identifier mapping to the HTML tag.
# The second pack function is a space-separated list of attribute identifiers.
Elem! ←^ ˜⊂"⊙Children"M!˙$"<_\_>\_</_>"
# Define an HTML element which doesn't take any children.
# The first pack function is an identifier mapping to the HTML tag.
# The second pack function is a space-separated list of attribute identifiers.
Void! ←^ M!$"<_\_ />"
