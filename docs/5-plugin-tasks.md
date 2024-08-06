---
title: Defining TIM tasks
---

{{#*inline "page"}}

# Defining TIM tasks

The primary benefit of using TIM is the access to  various interactive tasks
and plugins. TIMSync provides a structured and centralized way to define, import and manage tasks.

This guide outlines the approach to defining and importing tasks.  
For more information about the available task types and actual options, please refer to the [official TIM documentation](/view/tim/TIM-ohjeet#lista-muista-tim-oppaista).

## Defining task files

Task files can be placed anywhere within the project structure.  
Task files are any files with the file extension `.task.yml` or `.task.yaml`.

The basic structure of a task plugin is as follows:

{{{{raw}}}}
```yml
---
# REQUIRED: A unique identifier of the task. Used to import the task.
uid: hello_world
# REQUIRED: A TIM plugin to use to display the task.
#           csPlugin is used for programming tasks.
plugin: csPlugin
---
# Below, all contents are directly inserted into the final task in TIM.
# Templating is provided via Handlebars.
# Refer to csPlugin guide for the explanation of the values below:
# https://tim.jyu.fi/view/tim/ohjeita/csPlugin

header: Hello, world in C#
stem: |
  md: Change the text in the program so that running it prints `Hello, world!`

type: cs
fullprogram: |
  using System;
  
  public class HelloWorld 
  {
      // BYCODEBEGIN
      public static void Main(string[] args)
      {
          Console.WriteLine("Goodbye, World!");
      }
      // BYCODEEND
  }

pointsRule:
  expectOutput: "Hello, World!"
  output: 1.0
```
{{{{/raw}}}}

## Importing tasks into documents

Once the task file has been defined, tasks can be imported into documents using the `task` helper and
the UID of the task. For example:


{{{{raw}}}}
```md
{{task "hello_world"}}
```
{{{{/raw}}}}

Will import the task as follows:

{{task "hello_world"}}


## Details about task processing

*The information below is not necessary to know, but it is good to understand how task files are processed by TIMSync.*

By default, each file defined in the project structure generates a unique TIM document to that file.
However, task files are processed differently in order to allow the `task` helper to work.

Specifically,

- TIMSync generates a single document to path {{{{raw}}}}`{{site.base_path}}/_project_tasks`{{{{/raw}}}}
  that will contain all tasks defined in the project. In that sense, the created document is the *database* of all TIM tasks.
- Each task will be put into the database document its own paragraph with a precomputed paragraph ID.
  The `uid` of the task file will be used as the TaskID of the task in TIM.
- As such, {{{{raw}}}}`{{task "hello_world"}}`{{{{/raw}}}} helper simply expands into a paragraph reference:

    ```
    #- {rd="task_db_doc_id" rp="task_par_id"}
    ```

    where `task_db_doc_id` is the document ID of the abovementioned task database document and `task_par_id` is the paragraph ID of the actual task paragraph.


{{/inline}}

{{> doc_layout.md}}