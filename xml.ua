Tag! ←^ $"⊂⊙□ {\"_\" _}" ⊙(
  ⍚($"\"_\" repr _" °$"_=_") # Branches for each attribute
  $"↯∞\_2 {⊓(_)}" /$"_|_"    # Compose attributes
) °⊂
Render ← |1 ⨬(
| ∘
| ⊓(∘|⬚""/◇⊂ ⍚/$" _=_"|Render) °□₃
  $"<__>_</_>" ⤚⊙⊙∘
)⊸type
Tags! ←^ ♭ ≡◇{⊃(
    $"_ ← Tag!_ \n"
  | $"_! ←^ $\"Tag!(_|\_) /$\\\"\\\_|\\\_\\\" \" \n")
} ⟜(¯⌵)
P ← 5
Tags!(P|H|Span)

Render P Span "hi!"

┌─╴test
  ⍤⤙≍ "<p>abc</p>" Render Tag!p "abc"
  ⍤⤙≍ "<p a=3 b=5 c=\"wow\">abc</p>" Render Tag!(p|a=+1 2|b=∘|c="wow") 5 "abc"
  ⍤⤙≍ "<p><span>text</span></p>" Render Tag!p Tag!span "text"
└─╴
