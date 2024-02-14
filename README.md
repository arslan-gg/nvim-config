# NeoVim Configuration

Inspired by the setup featured on [DreamOfCode](https://www.youtube.com/watch?v=i04sSQjd-qo&t=28s&ab_channel=DreamsofCode), this guide outlines the installation steps for Golang development with NeoVim.

## Key Steps for Setup:

- Begin by installing NeoVim on your system.
- Proceed to install NvChad, but opt out of using example configurations.
- Utilize the Go package manager to install several tools essential for Golang development:
  - Execute `go install -v github.com/incu6us/goimports-reviser/v3@latest` to streamline import statements.
  - Implement `go install mvdan.cc/gofumpt@latest` for code formatting adhering to Go standards.
  - Use `go install github.com/segmentio/golines@latest` for automatic line length adjustments.
  - Install the debugger with `go install github.com/go-delve/delve/cmd/dlv@latest`.
- To set up CopilotChat.nvim, execute the following command: `pip install python-dotenv requests pynvim==0.5.0 prompt-toolkit`
- After the installations, move your configuration files to the `~/.config/nvim/lua/custom` directory.
- Ensure Python3 is installed and update the path to its executable in `~/.config/nvim/lua/custom/init.lua`.
- Launch NeoVim, and switch your theme to *catppuccin* by pressing `Space t h`.
- To install all necessary plugins and tools, enter `:MasonInstallAll`.
- To enable CopilotChat dependencies, execute the command: `:UpdateRemotePlugins`.
- Finally, to support Golang syntax, run `:TSInstall go`.

## Cheat Sheet:

- To specify the file type, use `:set ft=java`.
- Setting breakpoints is streamlined with `Space d b`.
- Open the debugging sidebar by pressing `Space d u s`.
- Debug the closest Go test with `Space d g t`, and to debug then rerun the last Go test, use `Space d g l`.
- Quickly insert error handling statements with `Space g e`.
- For adding JSON struct tags, use `Space g s j`, and for YAML tags, `Space g s y`.
- General Go commands can be accessed with `:Go<command>`.
- Debugging commands follow the prefix `:Dap<command>`.
