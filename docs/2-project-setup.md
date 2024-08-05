---
title: Project setup
---

{{#*inline "page"}}

# Project setup

A *project* is a folder on the local computer the contents of which will be synced with 
TIM. TIMSync recognizes projects by searching for the `.timsync` folder within the project.

This page describes how to set up a new project and provides details on the project folder layout.

This and all following pages assume that you have `timsync` CLI tool installed
and set up in your `PATH` environment variable so that the comment is available
in your terminal directly.

## Initializing a new project

To initialize a new project, create a new folder, move to it and
use `timsync init`:

```bash
mkdir new-project
cd new-project
timsync init
```

By default, calling `timsync init` without any arguments will start
a first time initialization wizard. You will be asked whether you 
want to set up syncing right away. If you answer `n`, you will have 
to manually set up syncing later.

If you set up syncing right away, you will be prompted for the following information:

* Hostname of the TIM instance to use (by default `https://tim.jyu.fi`)
* Credentials for TIM user that will perform syncing
   * **It is recommended to register a new account on TIM just for syncing**
* Path to TIM folder to which the files will be synced
  * This path must exist on TIM and the user must have permission to it

Once you have provided the necessary information, TIMSync will initialize the folder and save the sync configuration.

{{#> note.md}}
If you wish to skip the wizard, you can initialize the project manually.
Please refer to `timsync init --help` to see all the available arguments.
{{/note.md}}

{{/inline}}

{{> doc_layout.md}}