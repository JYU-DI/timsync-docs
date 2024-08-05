---
title: Installation
---

{{#*inline "page"}}

# Installation

TIMSync maintainers provide two official ways to obtain the CLI tool:

1. Downloading prebuilt binaries from GitHub
2. Building the project from source

## Downloading prebuilt binaries

The [TIMSync repository on GitHub]({{ timsync_repo }}) contains prebuilt binaries of the tool for
various platforms.  
You can always download the latest releases from the [Releases]({{ timsync_repo }}/releases) page.

Once downloaded, you can run the tool right away. It is recommended to add the tool
into your system's `PATH` environment variable so that it can be invoked from anywhere.

## Building the project from source

**Requirements**

- Rust 1.80 or newer installed
- Cargo installed

Preferably, install Rust and cargo via [rustup](https://rustup.rs).

Once you have Rust and cargo installed, you may install the tool via the following command:

```bash
cargo install --git {{timsync_repo}}
```

this command will automatically download the source code, required dependencies and build them.

After the installation is complete, you may access the tool directly via your terminal using the `timsync` command.

{{/inline}}

{{> doc_layout.md}}