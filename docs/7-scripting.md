---
title: Scripting in templates
---

{{#*inline "page"}}

# Scripting in templates

TIMSync allows advanced scripting by defining custom inline helpers.

Scripting is done using the [Rhai](https://rhai.rs/book/) scripting language.


## Defining custom helpers

To define a custom helper, create `_helpers` folder in the project root and create a new file in it using the `.rhai` file extension. Any `.rhai` files defined in the `_helpers` folder are loaded as custom helpers.

Consider the following minimal helper named `hello.rhai`:

```
"Hello, " + params[0]
```

It can be used in documents by its name as follows:

{{{{raw}}}}
```md
{{hello "Tom"}}
```
{{{{/raw}}}}

This will produce the following document:

```
Hello, Tom
```

## Arguments in custom helpers

You can access arguments using the following two variables:

- `params` is an array of positional arguments. For example, using {{{{raw}}}}`{{hello "foo" "bar"}}`{{{{/raw}}}} will set `params` to `["foo", "bar"]`.
- `hash` is a map of key-value arguments. For example, using {{{{raw}}}}`{{hello foo="bar"}}`{{{{/raw}}}} wil set `hash` to object `{foo: "bar"}`.

**Note** that unlike in built-in helpers, custom helpers will not receive any context variables like `site`, `doc_id`, `title`, etc. If you need to access them, you need to pass them explicitly.  
For example, to access all document metadata in custom helpers you may pass `site.docs` as an argument to your custom helper.

## Return value

The last expression without a semicolon is considered the return value of the helper. You may return any kind of object, array or raw value that can be used in Handlebars.

Note, that while front matter does not support templating, you can use the `set` helper with custom helpers to precompute variables to be used later in the document.
For example, consider the [`get_doc_menu_state`](https://github.com/JYU-DI/timsync-docs/blob/main/_helpers/get_doc_menu_state.rhai) helper used by this documentation page that computes the previous and the next chapter based on the current document's path. 
The result of the helper can then be saved into a variable and reused in the document template to display top and bottom navigation menus: [doc_layout.md](https://github.com/JYU-DI/timsync-docs/blob/main/_templates/doc_layout.md?plain=1#L1).

{{/inline}}

{{> doc_layout.md}}