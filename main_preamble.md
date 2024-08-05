---
tim_path: templates/preambles/preamble
title: preamble
---

{{#docsettings}}
lazy: false
auto_number_headings: 0
hide_readmarks: true
displayViewInitialState: false
sidemenu_initial_state: closed
themes:
  - dia-mini
  - {{ site.style_themes.main_theme }}
{{/docsettings}}

``` {plugin="timMenu" nocache="true" .hidden-print .section-top .section-nav}
openingSymbol: ""
separator: ""      
backgroundColor: "transparent"  # Menu bar background color (overrides basicColors)
textColor: black            # Menu bar text color (overrides basicColors)
fontSize: 1em
topMenu: false              # Show menu at the top when scrolling from below
basicColors: false          # Use TIM default color scheme in menu bar
keepLinkColors: true
hoverOpen: false             # Allow opening menus without clicking
menu: |!!
- [[]{.glyphicon .glyphicon-home} TIMSync home](/view/{{ site.base_path }}/{{ site.doc.home.path }}){.home-link .btn .btn-default}

{% if "/docs/" in docpath %}
- [[]{.glyphicon .glyphicon-chevron-down} [%%doctitle%%]{.chapter-name-text}]{.chapter-name .btn .btn-default width=400}
{% else %}
- [[]{.glyphicon .glyphicon-chevron-down} Chapters]{.chapter-name .btn .btn-default width=400}
{% endif %}
{{#each (get_docs docs=site.docs) as |doc|}}
   - [**{{incr @index}}.** {{doc.title}}](/view/{{ ../site.base_path }}/{{ doc.path }})
{{/each}}
!!
```
