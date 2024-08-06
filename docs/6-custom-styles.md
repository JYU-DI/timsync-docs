---
title: Custom styles
---

{{#*inline "page"}}

# Custom styles

TIMSync provides syntactic sugar for defining and using custom SCSS styles.

The feature is built upon TIM's own theming capabilities. As such, refer to [custom theme authoring guide](https://tim.jyu.fi/view/tim/ohjeita/styles#tyylin-muokkaus) for more information about TIM theming capabilities.

## Defining a custom style file

To define a custom style, create a new `.scss` or `.css` file and define your custom style.
For example, consider the following file named `my_theme.scss`:

```scss
// Changes the base color of TIM to red
$basic-color: #ff0000;
```

Once it is defined, you may use the theme in a document by referencing it in the
docsettings. For example, consider the following document named `doc.md`:

{{{{raw}}}}
```md
{{#docsettings}}
themes:
  - {{ site.style_themes.my_theme }}
{{/docsettings}}
```
{{{{/raw}}}}

Note that themes are referenced by the filename.

If you want to apply the theme across the entire project, consider moving the setting to the preamble:

{{{{raw}}}}
```md
---
title: preamble
tim_path: templates/preambles/preamble
---

{{#docsettings}}
themes:
  - {{ site.style_themes.my_theme }}
# Any other settings that should be applied globally to all documents
{{/docsettings}}
```
{{{{/raw}}}}

{{/inline}}

{{> doc_layout.md}}