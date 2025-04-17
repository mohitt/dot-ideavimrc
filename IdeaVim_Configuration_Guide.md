# IdeaVim Configuration Guide

## Introduction

This configuration is inspired by [LazyVim](https://www.lazyvim.org/) and adapted for JetBrains IDEs through the IdeaVim plugin. It provides a comprehensive set of keyboard mappings and configurations that make your JetBrains IDE feel more like a Neovim setup.

Key configuration elements:
- The `Space` key is set as the leader key (`let mapleader=" "`)
- The `\` (backslash) key is set as the local leader key (`let maplocalleader="\"`)
- Mappings are organized by functionality, following LazyVim's conventions

## Keyboard Modifiers

When reading keyboard shortcuts throughout this guide, you'll encounter special notation for modifier keys:

| Notation | Meaning | Windows | macOS | Linux |
|----------|---------|---------|-------|-------|
| `<C-key>` | Control + key | Ctrl key | Control (⌃) key (not Command ⌘) | Ctrl key |
| `<S-key>` | Shift + key | Shift key | Shift (⇧) key | Shift key |

Examples:
- `<C-h>` means press Control and h keys together (Ctrl+h)
- `<S-h>` means press Shift and h keys together (Shift+h, or simply H)
- `<C-S-h>` means press Control, Shift, and h keys together (Ctrl+Shift+h)

## Core Settings

| Setting | Value | Description |
|---------|-------|-------------|
| `clipboard` | `unnamedplus,unnamed,ideaput` | Integrates with system clipboard for seamless copy/paste |
| `number` | `on` | Shows line numbers |
| `relativenumber` | `on` | Shows relative line numbers for easier navigation |
| `scrolloff` | `4` | Maintains at least 4 lines of context above/below cursor |
| `shiftround` | `on` | Rounds indent to multiple of shiftwidth |
| `sidescrolloff` | `8` | Maintains 8 columns of context when scrolling sideways |
| `timeoutlen` | `10000` | Time in milliseconds to wait for a mapped sequence to complete |
| `notimeout` | `on` | No timeout on mappings |
| `nowrap` | `on` | Disables line wrapping |
| `backspace` | `indent,eol,start` | Allows backspace over everything in insert mode |
| `formatoptions` | `tcqj` | Controls automatic formatting |
| `undolevels` | `10000` | Number of changes that can be undone |

## Plugins

The configuration uses several plugins to enhance functionality:

1. **vim-commentary** (`tpope/vim-commentary`)
   - Provides `gcc` to comment out a line
   - `gc` in visual mode to comment out a selection
   - `gco` to add a comment on the line below
   - `gcO` to add a comment on the line above

2. **vim-surround** (`tpope/vim-surround`) - Remapped to mimic LazyVim's mini.surround
   - `gsa` to add surroundings (e.g., `gsaw"` to surround a word with quotes)
   - `gsr` to replace surroundings
   - `gsd` to delete surroundings

3. **easymotion** 
   - `s` to quickly jump to any character on screen

4. **which-key**
   - Displays a popup with key binding hints

5. **matchit**
   - Enhanced matching for HTML tags and programming language constructs

## Key Mappings

### Window Management

| Key Combination | Mode | Purpose |
|-----------------|------|---------|
| `<C-h>` | Normal | Go to left window |
| `<C-j>` | Normal | Go to lower window |
| `<C-k>` | Normal | Go to upper window |
| `<C-l>` | Normal | Go to right window |
| `<C-Up>` | Normal | Increase window height |
| `<C-Down>` | Normal | Decrease window height |
| `<C-Left>` | Normal | Decrease window width |
| `<C-Right>` | Normal | Increase window width |
| `<leader>-` | Normal | Split window below |
| `<leader>\|` | Normal | Split window right |
| `<leader>wd` | Normal | Delete window |
| `<leader>wm` | Normal | Toggle maximize window (distraction-free mode) |

### Buffer Management

| Key Combination | Mode | Purpose |
|-----------------|------|---------|
| `<S-h>` | Normal | Previous buffer/tab |
| `<S-l>` | Normal | Next buffer/tab |
| `[b` | Normal | Previous buffer/tab (alternative) |
| `]b` | Normal | Next buffer/tab (alternative) |
| `<leader>bb` | Normal | Switch to other buffer |
| `<leader>`` | Normal | Switch to other buffer (alternative) |
| `<leader>bd` | Normal | Delete buffer |
| `<leader>bD` | Normal | Delete buffer and window |
| `<leader>bo` | Normal | Delete other buffers |
| `<leader>bl` | Normal | Delete buffers to the left |
| `<leader>br` | Normal | Delete buffers to the right |
| `<leader>bp` | Normal | Toggle pin buffer |
| `<leader>bP` | Normal | Delete non-pinned buffers |

### File Navigation

| Key Combination | Mode | Purpose |
|-----------------|------|---------|
| `<leader><space>` | Normal | Find files (root dir) |
| `<leader>,` | Normal | Switch buffer |
| `<leader>ff` | Normal | Find files (root dir) |
| `<leader>fF` | Normal | Find files (cwd) |
| `<leader>fg` | Normal | Find git files |
| `<leader>fr` | Normal | Recent files |
| `<leader>fR` | Normal | Recent files (cwd) |
| `<leader>fn` | Normal | New file |
| `<leader>ft` | Normal | Open terminal (root dir) |
| `<leader>fT` | Normal | Open terminal (cwd) |
| `<leader>e` | Normal | File structure popup |
| `<leader>E` | Normal | Select in project view |
| `<leader>fe` | Normal | Activate project tool window |
| `<leader>be` | Normal | Buffer explorer |

### Code Actions and LSP

| Key Combination | Mode | Purpose |
|-----------------|------|---------|
| `gd` | Normal | Go to definition |
| `gr` | Normal | Find references |
| `gI` | Normal | Go to implementation |
| `gy` | Normal | Go to type definition |
| `gD` | Normal | Go to declaration |
| `gK` | Normal | Show parameter info (signature help) |
| `<C-k>` | Insert | Show parameter info (signature help) |
| `<leader>ca` | Normal/Visual | Code action menu |
| `<leader>cr` | Normal | Rename element |
| `<leader>cR` | Normal | Rename file |
| `<leader>cf` | Normal/Visual | Format code |
| `<leader>cd` | Normal | Show line diagnostics |
| `<leader>cA` | Normal | Show intention actions |
| `]]` | Normal | Next reference |
| `[[` | Normal | Previous reference |
| `<a-n>` | Normal | Next reference (alternative) |
| `<a-p>` | Normal | Previous reference (alternative) |
| `]d` | Normal | Next diagnostic |
| `[d` | Normal | Previous diagnostic |
| `]e` | Normal | Next error |
| `[e` | Normal | Previous error |
| `]w` | Normal | Next warning |
| `[w` | Normal | Previous warning |
| `]q` | Normal | Next quickfix item |
| `[q` | Normal | Previous quickfix item |
| `gu` | Normal | Show usages |

### Git Operations

| Key Combination | Mode | Purpose |
|-----------------|------|---------|
| `<leader>gg` | Normal | Activate commit tool window |
| `<leader>gG` | Normal | Activate commit tool window (cwd) |
| `<leader>gb` | Normal | Git blame line (annotate) |
| `<leader>gB` | Normal | Git browse (show log) |
| `<leader>gf` | Normal | Current file history |
| `<leader>gl` | Normal | Git log |
| `<leader>gL` | Normal | Git log (cwd) |
| `<leader>gc` | Normal | Git commits |
| `<leader>gs` | Normal | Git status |
| `<leader>ge` | Normal | Git explorer (version control tool window) |

### Terminal Controls

| Key Combination | Mode | Purpose |
|-----------------|------|---------|
| `<leader>ft` | Normal | Activate terminal tool window (root dir) |
| `<leader>fT` | Normal | Activate terminal tool window (cwd) |
| `<C-/>` | Normal | Activate terminal tool window |

### Debug Controls

| Key Combination | Mode | Purpose |
|-----------------|------|---------|
| `<leader>da` | Normal | Run with args (choose run configuration) |
| `<leader>db` | Normal | Toggle breakpoint |
| `<leader>dB` | Normal | Add conditional breakpoint |
| `<leader>dc` | Normal | Continue (resume) |
| `<leader>dC` | Normal | Run to cursor |
| `<leader>di` | Normal | Step into |
| `<leader>dj` | Normal | Down (go to next error) |
| `<leader>dk` | Normal | Up (go to previous error) |
| `<leader>dl` | Normal | Run last debug configuration |
| `<leader>do` | Normal | Step out |
| `<leader>dO` | Normal | Step over |
| `<leader>dp` | Normal | Pause |
| `<leader>dr` | Normal | Toggle REPL |
| `<leader>dt` | Normal | Terminate debug session |
| `<leader>de` | Normal/Visual | Evaluate expression |
| `<leader>du` | Normal | DAP UI (activate debug tool window) |
| `<leader>td` | Normal | Debug nearest |

### Search and Find Operations

| Key Combination | Mode | Purpose |
|-----------------|------|---------|
| `<leader>/` | Normal | Grep (root dir) |
| `<leader>sg` | Normal | Grep (root dir) alternative |
| `<leader>sG` | Normal | Grep (cwd) |
| `<leader>sw` | Normal | Search word under cursor (root dir) |
| `<leader>sW` | Normal | Search word under cursor (cwd) |
| `<leader>sw` | Visual | Search selection (root dir) |
| `<leader>sW` | Visual | Search selection (cwd) |
| `<leader>sC` | Normal | Commands |
| `<leader>sH` | Normal | Highlight usages in file |
| `<leader>ss` | Normal | Go to symbol |
| `<leader>sS` | Normal | Go to symbol (workspace) |
| `<leader>sb` | Normal | Switch buffer |
| `<leader>sc` | Normal | Command history |
| `<leader>sj` | Normal | Jump list (recent locations) |
| `<leader>sk` | Normal | Key maps |
| `<leader>sm` | Normal | Jump to mark |
| `<leader>sd` | Normal | Document diagnostics |
| `<leader>sD` | Normal | Workspace diagnostics |
| `<leader>sq` | Normal | Quickfix list |
| `<leader>sl` | Normal | Location list |
| `<esc>` | Normal | Clear search highlighting |
| `<leader>ur` | Normal | Clear search highlighting (alternative) |
| `s` | Normal/Visual/Operator | EasyMotion - jump to character |

### Testing Operations

| Key Combination | Mode | Purpose |
|-----------------|------|---------|
| `<leader>tl` | Normal | Run last test |
| `<leader>to` | Normal | Show test output |
| `<leader>tO` | Normal | Toggle output panel |
| `<leader>tr` | Normal | Run nearest test class |
| `<leader>tS` | Normal | Stop test |
| `<leader>tt` | Normal | Run test class |
| `<leader>td` | Normal | Debug nearest test |

### Todo Comments

| Key Combination | Mode | Purpose |
|-----------------|------|---------|
| `<leader>st` | Normal | Show TODO tool window |
| `<leader>sT` | Normal | Show TODO/FIX/FIXME tool window |
| `<leader>xt` | Normal | Show TODO tool window (alternative) |
| `<leader>xT` | Normal | Show TODO/FIX/FIXME tool window (alternative) |
| `[t` | Normal | Previous TODO comment |
| `]t` | Normal | Next TODO comment |

### Custom Mappings

| Key Combination | Mode | Purpose |
|-----------------|------|---------|
| `<leader>uz` | Normal | Hide all windows |
| `<leader>me` | Normal | Search everywhere |
| `<leader>vl` | Normal | Reload .ideavimrc config |
| `<leader>ve` | Normal | Edit .ideavimrc config |
| `<leader>ui` | Normal | Inspect position (structure tool window) |
| `<leader>uI` | Normal | Inspect tree (structure tool window) |
| `<leader>us` | Normal | Toggle spelling |
| `<leader>uw` | Normal | Toggle line wrap |
| `<leader>uL` | Normal | Toggle relative line numbers |
| `<leader>ul` | Normal | Toggle line numbers |
| `<leader>ub` | Normal | Toggle background (quick change scheme) |
| `<leader>uh` | Normal | Toggle inlay hints |
| `<leader>uC` | Normal | Change color scheme with preview |
| `<leader>L` | Normal | Show what's new |
| `<leader>qq` | Normal | Quit all |

## Neovim Compatibility Mappings

| Key Combination | Mode | Purpose |
|-----------------|------|---------|
| `Y` | Normal | Yank to end of line (y$) |
| `<C-U>` | Insert | Delete to start of line with undo break |
| `<C-W>` | Insert | Delete word with undo break |
| `Q` | Normal | Replay last macro (@@) |

## Notes

- This configuration aims to provide a seamless transition between Neovim (particularly LazyVim) and JetBrains IDEs.
- Some mappings may not have direct equivalents or might behave slightly differently due to IDE limitations.
- You can customize this configuration further by editing your `.ideavimrc` file.
- Use `<leader>ve` to quickly edit the configuration and `<leader>vl` to reload it.

