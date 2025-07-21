# Experimental!

Xml ~ "xml" ~ Attrs Children Elem! M! Void!
~ "xml" ~ Elem! Void!

HXGet    ← $$ hx-get="_"
HXPost   ← $$ hx-post="_"
HXSwap   ← $$ hx-swap="_"
HXTarget ← $$ hx-target="_"

# Construct an HTTP response
# ResponseBytes ? Status Mime Bytes
Response ← (
  ⊙⊙⊸⧻

  ⊓($"HTTP/1.1 _\r\n"
  | $"Content-Type: _; charset=UTF-8\r\n"
  | $"Content-Length: _\r\n\r\n"
  )
  ⊂⊂

  ⊂ utf₈
)
# Construct a simple text HTTP response
TextResp ← Response "200 OK" "text/html" utf₈
# A simple not found HTTP response
NotFound ← (Response "404 Not Found" "text/plain" utf₈"Not Found")
# Construct a simple HTML HTTP response
HtmlResp ← Response "200 OK" "text/html" utf₈

Respond! ← (
  &w⊸(
    ⟜(&p $"Request from _" &tcpaddr)
    °□⊡1 ⊜□⊸≠@\s &ru "\r\n\r\n"
    ⟜(&p $"Request:\n_")
    ^0
    ⟜(&p $"Response: _ bytes" ⧻)
  )
)

Sig! ↚^ ⋅⊢

# Start a server on the given port.
# The function will be called on the TCP socket for each incoming connection.
# ? Port
Serve! ← (
  &tcpl $"0.0.0.0:_"
  ⟜(&p $"Server started on _" &tcpaddr)
  ⍢(⍜&tcpa(⍣Respond!^0⋅&p))1
)

(˜⊂"⊙Children" M!˙$"<!DOCTYPE html><_\_>\_</_>")^!(Html|Xmlns)

Elem!(A|Attributionsrc Download Href Hreflang Ping Referrerpolicy Rel Target Type)
Elem!(Abbr|)
Elem!(Address|)
Void!(Area|Alt Coords Download Href Ping Referrerpolicy Rel Shape Target)
Elem!(Article|)
Elem!(Aside|)
Elem!(Audio|Autoplay Controls Controlslist Crossorigin Disableremoteplayback Loop Muted Preload Src)
Elem!(B|)
Void!(Base|Href Target)
Elem!(Bdi|)
Elem!(Bdo|Dir)
Elem!(Blockquote|Cite)
Elem!(Body|Onafterprint Onbeforeprint Onbeforeunload Onblur Onerror Onfocus Onhashchange Onlanguagechange Onload Onmessage Onoffline Ononline Onpopstate Onresize Onstorage Onunload)
Void!(Br|)
Elem!(Button|Autofocus Disabled Form Formaction Formenctype Formmethod Formnovalidate Formtarget Name Popovertarget Popovertargetaction Type Value)
Elem!(Canvas|Height Width)
Elem!(Caption|)
Elem!(Cite|)
Elem!(Code|)
Void!(Col|Span)
Elem!(Colgroup|Span)
Elem!(Data|Value)
Elem!(Datalist|)
Elem!(Dd|)
Elem!(Del|Cite Datetime)
Elem!(Details|Name Open)
Elem!(Dfn|)
Elem!(Dialog|Open)
Elem!(Div|)
Elem!(Dl|)
Elem!(Dt|)
Elem!(Em|)
Void!(Embed|Height Src Type Width)
Elem!(Fencedframe|Allow Height Width)
Elem!(Fieldset|Disabled Form Name)
Elem!(Figcaption|)
Elem!(Figure|)
Elem!(Footer|)
Elem!(Form|AcceptCharset Autocapitalize Autocomplete Name Rel)
Elem!(H₁|)
Elem!(H₂|)
Elem!(H₃|)
Elem!(H₄|)
Elem!(H₅|)
Elem!(H₆|)
Elem!(Head|)
Elem!(Header|)
Elem!(Hgroup|)
Void!(Hr|)
Elem!(I|)
Elem!(Iframe|Allow Allowfullscreen Browsingtopics Credentialless Csp Height Loading Name Referrerpolicy Sandbox Src Srcdoc Width)
Void!(Img|Alt Attributionsrc Crossorigin Decoding Elementtiming Fetchpriority Height Ismap Loading Referrerpolicy Sizes Src Srcset Usemap Width)
Void!(
  Input
| Accept Alt Autocapitalize Autocomplete Autofocus Capture Checked Dirname Disabled Form Formaction Formenctype Formmethod Formnovalidate Formtarget Height Id Inputmode List Max Maxlength Min Minlength Multiple Name Pattern Placeholder Popovertarget Popovertargetaction Readonly Required Size Src Step Tabindex Title Type Value Width)
Elem!(Ins|Cite Datetime)
Elem!(Kbd|)
Elem!(Label|For)
Elem!(Legend|)
Elem!(Li|Value)
Void!(Link|As Blocking Crossorigin Disabled Fetchpriority Href Hreflang Imagesizes Imagesrcset Integrity Media Referrerpolicy Rel Sizes Title Type)
Elem!(Main|)
Elem!(Map|Name)
Elem!(Mark|)
Elem!(Menu|)
Void!(Meta|Charset Content HttpEquiv Name)
Elem!(Meter|Form High Low Max Min Optimum Value)
Elem!(Nav|)
Elem!(Noscript|)
Elem!(Object|Data Form Height Name Type Width)
Elem!(Ol|Reversed Start Type)
Elem!(Optgroup|Disabled Label)
Elem!(Option|Disabled Label Selected Value)
Elem!(Output|For Form Name)
Elem!(P|)
Elem!(Picture|)
Elem!(Portal|Referrerpolicy Src)
Elem!(Pre|)
Elem!(Progress|Max Value)
Elem!(Q|Cite)
Elem!(Rp|)
Elem!(Rt|)
Elem!(Ruby|)
Elem!(S|)
Elem!(Samp|)
Elem!(Script|Async Attributionsrc Blocking Crossorigin Defer Fetchpriority Integrity Nomodule Nonce Referrerpolicy Src Type)
Elem!(Search|)
Elem!(Section|)
Elem!(Select|Autocomplete Autofocus Disabled Form Multiple Name Required Size)
Elem!(Slot|Name)
Elem!(Small|)
Void!(Source|Height Media Sizes Src Srcset Type Width)
Elem!(Span|)
Elem!(Strong|)
Elem!(Style|Blocking Media Nonce Title)
Elem!(Sub|)
Elem!(Summary|)
Elem!(Sup|)
Elem!(Table|)
Elem!(Tbody|)
Elem!(Td|Colspan Headers Rowspan)
Elem!(Template|Shadowrootclonable Shadowrootdelegatesfocus Shadowrootmode Shadowrootserializable)
Elem!(Textarea|Autocapitalize Autocomplete Autocorrect Autofocus Cols Dirname Disabled Form Maxlength Minlength Name Placeholder Readonly Required Rows Spellcheck Wrap)
Elem!(Tfoot|)
Elem!(Th|Abbr Colspan Headers Rowspan Scope)
Elem!(Thead|)
Elem!(Time|Datetime)
Elem!(Title|)
Elem!(Tr|)
Void!(Track|Default Kind Label Src Srclang)
Elem!(U|)
Elem!(Ul|)
Elem!(Var|)
Elem!(Video|Autoplay Controls Controlslist Crossorigin Disablepictureinpicture Disableremoteplayback Height Loop Muted Playsinline Poster Preload Src Width)
Void!(Wbr|)

┌─╴test
  ⍤⤙≍ "<p>abc</p>" P "abc"
  ⍤⤙≍ "<p>abc</p>" P {"abc"}
  ⍤⤙≍ "<h2>x</h2>" H₂ "x"
  ⍤⤙≍ "<h2>x</h2>" H₂ {"x"}
  ⍤⤙≍ "<img />" Img
  ⍤⤙≍ "<img src=\"x\" />" Img Src:"x"
  ⍤⤙≍ "<p class=\"5\" id=\"3\" c=\"wow\">abc</p>" P Class:"5" Id:(+1 2) X:"c=\"wow\"" "abc"
  ⍤⤙≍ "<button class=\"btn\" hx-get=\"/foo\" hx-target=\"div\">click me</button>" Button Class:"btn" X:{HXGet "/foo" HXTarget "div"} "click me"
  ⍤⤙≍ "<p><span>text</span></p>" P Span "text"
  ⍤⤙≍ "<p><span>text</span></p>" P {Span {"text"}}
  ⍤⤙≍ "<!DOCTYPE html><html>hi</html>" Html "hi"
└─╴
