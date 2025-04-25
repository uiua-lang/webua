# Webua

This is a *very* work-in-progress [Uiua](https://uiua.org) backend web framework.

# Templating

Templating is done with tag functions. A tag function is passed a list of attributes and children. 

The `!` macro makes it easy to define attributes.

```uiua
Html ~ "git: github.com/uiua-lang/webua"

Html!(Html {
  Head {
    Title "Example"
    Meta {!charset "utf-8"}
    Style {!href "style.css"}
  }
  Body {
    H₁ "Webua Example"
    P "This is a simple example of Webua templating."
    Br {}
  }
})
```

You can use normal Uiua primitives to fill out data.

```uiua
~ "git: github.com/uiua-lang/webua"

$Users {"Alice" "Bob" "Carol"}
Html!(Div {
  H₁ "Users"
  Ul ⍚Li
})
## "<div><h1>Users</h1><ul><li>Alice</li><li>Bob</li><li>Carol</li></ul></div>"
```

# Routing

Server routing is implemented by passing a router function to the Serve! macro. See the [examples](https://github.com/uiua-lang/webua/tree/main/examples).

# Sites

These sites are built with Webua:
- [scrabble.vxcc.dev](https://scrabble.vxcc.dev) ([github](https://github.com/Jacob-Lockwood/scrabble-dictionary))