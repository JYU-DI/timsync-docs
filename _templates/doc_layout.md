{{ set menu_state=(get_doc_menu_state cur_path=path docs=site.docs) }}

``` {plugin="timMenu" .material-menu .menu-no-bottom .menu-next-prev-nav .hidden-print}
openingSymbol: "▼"
separator: ""      
backgroundColor: "white"  # Menu bar background color (overrides basicColors)
textColor: "black"            # Menu bar text color (overrides basicColors)
fontSize: 14px
topMenu: false              # Show menu at the top when scrolling from below
basicColors: false          # Use TIM default color scheme in menu bar
keepLinkColors: false
hoverOpen: true             # Allow opening menus without clicking
menu: |!!
{{#if menu_state.prev}}
- [[]{.t-icon .t-icon-left} [{{ menu_state.prev.title }}]{.link-text}](/view/{{ site.base_path }}/{{ menu_state.prev.path }}){.link-item}
{{else}}
- [[]{.t-icon .t-icon-left}]{.link-item .disabled}
{{/if}}

{{#if menu_state.next}}
- [[{{ menu_state.next.title }}]{.link-text} []{.t-icon .t-icon-right}](/view/{{ site.base_path }}/{{ menu_state.next.path }}){.link-item}
{{else}}
- [[]{.t-icon .t-icon-right}]{.link-item .disabled}
{{/if}}
!!
```

{{> page }}

``` {plugin="timMenu" .material-menu .menu-no-bottom .menu-next-prev-nav .hidden-print}
openingSymbol: "▼"
separator: ""      
backgroundColor: "white"  # Menu bar background color (overrides basicColors)
textColor: "black"            # Menu bar text color (overrides basicColors)
fontSize: 14px
topMenu: false              # Show menu at the top when scrolling from below
basicColors: false          # Use TIM default color scheme in menu bar
keepLinkColors: false
hoverOpen: true             # Allow opening menus without clicking
menu: |!!
{{#if menu_state.prev}}
- [[]{.t-icon .t-icon-left} [{{ menu_state.prev.title }}]{.link-text}](/view/{{ site.base_path }}/{{ menu_state.prev.path }}){.link-item}
{{else}}
- [[]{.t-icon .t-icon-left}]{.link-item .disabled}
{{/if}}

{{#if menu_state.next}}
- [[{{ menu_state.next.title }}]{.link-text} []{.t-icon .t-icon-right}](/view/{{ site.base_path }}/{{ menu_state.next.path }}){.link-item}
{{else}}
- [[]{.t-icon .t-icon-right}]{.link-item .disabled}
{{/if}}
!!
```