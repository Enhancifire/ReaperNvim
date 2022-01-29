<div align="center">
<h1 align="center">ReaperNvim</h1>
<a href="https://github.com/Enhancifire/ReaperNvim/#Features">✨ Features</a>
<span> • </span>
<a href="https://github.com/Enhancifire/ReaperNvim/#Requirements">🔑 Requirements</a>
<span> • </span>
<a href="https://github.com/Enhancifire/ReaperNvim/#Installation">🛠️ Installation</a>
<span> • </span>
<a href="https://github.com/Enhancifire/ReaperNvim/#Plugins">🔌 Plugins</a>
</div>


<br>

![Screenshot](https://github.com/Enhancifire/ReaperNvim/blob/main/assets/dashboard.jpeg)

<br>

![Screenshot](https://github.com/Enhancifire/ReaperNvim/blob/main/assets/proj.jpeg)

## Introduction

The goal of this configuration is to be able to work as fast as possible.
This is my personal configuration for Neovim and I daily drive it.

## Features

- Built to be Fast AF boi
- Tons of plugins for dat sweet dev experience
- Heavy documentation for easy understanding
- Sane defaults
- Portable across operating systems
- Looks good
- Support for Version control
- Terminal Integration
- Autoformatting

## Requirements

As this is just a configuration, it will require some additional tools to work.

* [Neovim Version > 0.5](https://github.com/neovim/neovim/releases/tag/v0.5.0) Required - The base editor
* [NodeJS](https://nodejs.org) - Required - For lsp and treesitter
* [Lazygit](https://github.com/jesseduffield/lazygit) - Optional - For git integration
* [RipGrep](https://github.com/BurntSushi/ripgrep) - Optional - For telescope live grep

## Installation

Make sure to have git installed

### On Windows

From your user directory, run this command
```
git clone https://github.com/Enhancifire/ReaperNvim.git AppData\Local\nvim
```

### On Linux

```
git clone https://github.com/Enhancifire/ReaperNvim.git ~/.config/nvim
```

### After Clone
run

```
npm install -g tree-sitter
```

Launch Neovim by entering nvim in the terminal.
After launching type : and enter ``PackerSync``
Your ReaperNvim should be ready to go

### Language Server Installation and Setup

To install the language servers, just type : and then LspInstall and then press tab. The list of language servers will be available. Just enter the language you want support for and it will be autocompleted by pressing tab. Just press enter and that language server will be installed.

## Plugins

There are a lot of plugins used in this configuration. Some of the more important ones are:

- Telescope - The ultimate fuzzy finder
- nvim-lspconfig - The plugin that enables IDE like experience in neovim
- nvim-cmp - Autocomplete for lspconfig
- lsp-saga - Cool looking diagnostics
- Nvim-Tree - The file tree on the left
- Whichkey - The popup when pressing space
- ToggleTerm - The toggle floating terminal

### File Navigation

Uses Nvim-tree and Telescope for smooth file navigation and switching

![File Navigation Image](https://github.com/Enhancifire/ReaperNvim/blob/main/assets/fm.gif)

### Terminal

Uses ToggleTerm plugin for terminal emulation in editor

![Terminal](https://github.com/Enhancifire/ReaperNvim/blob/main/assets/ft.gif)
