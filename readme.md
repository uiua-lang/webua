# Webua

This is a *very* work-in-progress [Uiua](https://uiua.org) backend web framework.

# Templating

Templating is done with tag functions. A tag function is passed a list of attributes and children. 

The `!` macro makes it easy to define attributes.

```uiua
~ "git: github.com/uiua-lang/webua" ~ ! Html Head Body P Br H₁ Title Meta Style

Html {
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
}
```

You can use normal Uiua primitives to fill out data.

```uiua
~ "git: github.com/uiua-lang/webua" ~ Div H₁ Ul Li

$Users {"Alice" "Bob" "Carol"}
Div {
  H₁ "Users"
  Ul ⍚Li
}
## "<div><h1>Users</h1><ul><li>Alice</li><li>Bob</li><li>Carol</li></ul></div>"
```

# Routing

Server routing is implemented by passing a router function to the Serve! macro. See the examples for how to do this.