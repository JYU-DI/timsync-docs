---
uid: home
title: TIMSync
---

# TIMSync - CLI tool to sync local documents with TIM

TIMSync is a tool to sync local documents with TIM.

The tool is aimed to allow authoring and managing documents easily outside of TIM. 
TIMSync includes extendable templating via [Handlebars](https://handlebarsjs.com)
and scripting via the [Rhai scripting language](https://rhai.rs).

This page contains basic documentation for using TIMSync. This page was
generated with TIMSync as well!

## Usage guide

The the chapters below contain a basic usage guide for TIMSync along with
common usage patterns.

#- {.instruction}

:::sec-list
{{#each (get_docs docs=site.docs) as |doc|}}
<a href="/view/{{../site.base_path}}/{{doc.path}}" class="sec-row">
<div class="sec-no">{{incr @index}}.</div>
<div class="sec-title">{{doc.title}}</div>
</a>
{{/each}}
:::