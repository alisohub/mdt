<div align="center">
  <h1>mdt</h1>
  <p>A simple command-line markdown todo list manager inspired by <a href="https://github.com/sjl/t">t</a></p>
  <img src="mdt.gif" alt="Demo" width="800">
  <p>
    <sub>
      Demo GIF using <a href=https://starship.rs/>starship</a> prompt, <a href=https://github.com/kyoz/purify>purify</a> theme, <a href=https://www.jetbrains.com/lp/mono/>JetBrains Mono</a> font, along with <a href=https://nvchad.com>NvChad</a> and <a href=https://github.com/siduck/st>st</a>
    </sub>
  </p>
</div>
  
## :sparkles: Features

- Minimal set of functionality designed to finish tasks instead of organizing them.
- Flexible, future-proof markdown file format that you can use to add additional context and notes to your tasks.
- Nice, interactive command-line interface to quickly capture and check tasks.

## :package: Dependencies

- POSIX-compliant shell (dash, bash, zsh etc.)
- [gum](https://github.com/charmbracelet/gum#installation)

## :rocket: Installation

### Arch Linux

```sh
paru -S mdt # or with your AUR helper of choice
```

### macOS (Homebrew)

```sh
brew install mdt
```

### Manually with `make`

```sh
# Clone the repo
git clone https://github.com/basilioss/mdt

# Change your current directory to mdt
cd mdt

# Install
sudo make install

# Update
git pull
sudo make install

# Remove
sudo make uninstall
```

### Manually with `curl`

```sh
# Download
curl -L https://raw.githubusercontent.com/basilioss/mdt/main/mdt > mdt
# Make it executable
chmod +x mdt
# Move it somewhere in your $PATH
mv mdt ~/.local/bin
```

## :gear: Configuration

| Option             | Environment Variable   | Description                                                                                                          |
| ------------------ | ---------------------  | -------------------------------------------------------------------------------------------------------------------- |
| -d, --dir          | MDT_DIR                | Path to the tasks directory. By default the current working directory.                                               |
| -i, --inbox        | MDT_INBOX              | Path to the inbox file. By default "TODO.md".                                                                        |
| -m, --add-multiple | MDT_ADD_MULTIPLE_TASKS | Add multiple tasks at once.                                                                                          |
| -u, --unite-tasks  | MDT_UNITE_TASKS        | List all tasks in the file. By default false, if tasks are separated by headings, mdt will prompt you to select one. |
| --color            | MDT_MAIN_COLOR         | Main color.                                                                                                          |
| --prompt           | MDT_PROMPT             | Input prompt character. Default is '◆'.                                                                              |
| --cursor           | MDT_CURSOR             | Selection character. Default is '➔'.                                                                                 |
| --item-width       | MDT_ITEM_WIDTH         | Todo items width. 0 for no wrap, default is 75.                                                                      |
| --input-width      | MDT_INPUT_WIDTH        | Input prompt width. 0 for no wrap, default is 65.                                                                    |
| --editor           | MDT_EDITOR, EDITOR     | Markdown file editor.                                                                                                |
|                    | MDT_CHECKBOX_PREFIX    | Prefix of markdown checkboxes `[ ]`/`[x]`. Default is '-'.                                                           |

Examples of using options:

```sh
# Static path to the inbox
alias mdt='mdt --dir ~/tasks --inbox ~/tasks/inbox.md'
# Dynamic path to the inbox
alias mdt='mdt --dir ~/tasks --inbox ~/tasks/"$(date -I).md"'
```

Examples of using environment variables:

```sh
export MDT_MAIN_COLOR='#5FAFFF'
export MDT_EDITOR='nvim -c "set nonumber"'
```

## :keyboard: Keybindings

| Keybinding                   | Description         |
| ---------------------------- | ------------------- |
| ↓/↑, j/k, Ctrl+j/k, Ctrl+n/p | Move up/down        |
| ←/→, g/G                     | Move top/bottom     |
| Tab/Space/x                  | Select              |
| a/A                          | Select/unselect all |
| Enter                        | Accept              |

