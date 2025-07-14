# Claude Code Documentation

This document provides a comprehensive overview of Claude Code, an agentic coding tool for your terminal.

## 1. Overview

Claude Code is a command-line tool that helps you code faster through natural language commands. It integrates directly with your development environment, providing a seamless workflow without requiring additional servers or complex setup.

### 1.1. Why Claude Code?

- **Accelerate development**: Edit files, fix bugs, answer questions about your code, execute tests, manage git, and browse the web.
- **Security and privacy by design**: Your code stays on your machine, with direct API connections to Anthropic.
- **Enterprise integration**: Connect to Amazon Bedrock or Google Vertex AI for secure, compliant deployments.

## 2. Setup and Installation

### 2.1. System Requirements

- **Operating Systems**: macOS 10.15+, Ubuntu 20.04+/Debian 10+, or Windows via WSL
- **Hardware**: 4GB RAM minimum
- **Software**:
  - Node.js 18+
  - [git](https://git-scm.com/downloads) 2.23+ (optional)
  - [GitHub](https://cli.github.com/) or [GitLab](https://gitlab.com/gitlab-org/cli) CLI for PR workflows (optional)
- **Network**: Internet connection required for authentication and AI processing
- **Location**: Available only in [supported countries](https://www.anthropic.com/supported-countries)

### 2.2. Installation and Authentication

1.  **Install Claude Code**:
    ```sh
    npm install -g @anthropic-ai/claude-code
    ```
    <Warning>
      Do NOT use `sudo npm install -g` as this can lead to permission issues and
      security risks. If you encounter permission errors, see [Troubleshooting](#8-troubleshooting) for recommended solutions.
    </Warning>

2.  **Navigate to your project**:
    ```bash
    cd your-project-directory
    ```

3.  **Start Claude Code**:
    ```bash
    claude
    ```

4.  **Complete authentication**:
    - **Anthropic Console**: Default option, requires active billing.
    - **Claude App (Pro or Max plan)**: Unified subscription for Claude Code and web interface.
    - **Enterprise platforms**: Configure with [Amazon Bedrock or Google Vertex AI](#6-enterprise-deployment).

### 2.3. IDE Integration

Claude Code integrates with VS Code and JetBrains IDEs.

- **Features**: Quick launch, diff viewing, selection context, file reference shortcuts, and diagnostic sharing.
- **Installation**:
    - **VS Code**: Run `claude` in the integrated terminal.
    - **JetBrains**: Install the [Claude Code plugin](https://docs.anthropic.com/s/claude-code-jetbrains) from the marketplace.

## 3. Core Concepts and Usage

### 3.1. Interactive Mode

Run `claude` to start an interactive REPL session.

**Keyboard Shortcuts:**

| Shortcut         | Description                        |
| :--------------- | :--------------------------------- |
| `Ctrl+C`         | Cancel current input or generation |
| `Ctrl+D`         | Exit Claude Code session           |
| `Ctrl+L`         | Clear terminal screen              |
| `Up/Down arrows` | Navigate command history           |
| `Esc` + `Esc`    | Edit previous message              |

**Multiline Input:**

- `\` + `Enter`
- `Option+Enter` (macOS)
- `Shift+Enter` (after `/terminal-setup`)

### 3.2. CLI Reference

**Commands:**

| Command                            | Description                                    |
| :--------------------------------- | :--------------------------------------------- |
| `claude`                           | Start interactive REPL                         |
| `claude "query"`                   | Start REPL with initial prompt                 |
| `claude -p "query"`                | Query via SDK, then exit                       |
| `cat file \| claude -p "query"`    | Process piped content                          |
| `claude -c`                        | Continue most recent conversation              |
| `claude -r "<session-id>" "query"` | Resume session by ID                           |
| `claude update`                    | Update to latest version                       |
| `claude mcp`                       | Configure MCP servers                          |

**Flags:**

| Flag                             | Description                                                              |
| :------------------------------- | :----------------------------------------------------------------------- |
| `--add-dir`                      | Add additional working directories                                       |
| `--allowedTools`                 | List of allowed tools                                                    |
| `--disallowedTools`              | List of disallowed tools                                                 |
| `--print`, `-p`                  | Print response without interactive mode                                  |
| `--output-format`                | Output format for print mode (`text`, `json`, `stream-json`)             |
| `--input-format`                 | Input format for print mode (`text`, `stream-json`)                      |
| `--verbose`                      | Enable verbose logging                                                   |
| `--max-turns`                    | Limit agentic turns in non-interactive mode                              |
| `--model`                        | Set the model for the session                                            |
| `--permission-mode`              | Set a permission mode (`default`, `acceptEdits`, `plan`, `bypassPermissions`) |
| `--resume`                       | Resume a specific session                                                |
| `--continue`                     | Continue the most recent conversation                                    |
| `--dangerously-skip-permissions` | Skip permission prompts (use with caution)                               |

### 3.3. Slash Commands

Control Claude's behavior with slash commands.

**Built-in Commands:**

| Command                   | Purpose                                                |
| :------------------------ | :----------------------------------------------------- |
| `/add-dir`                | Add additional working directories                     |
| `/bug`                    | Report bugs                                            |
| `/clear`                  | Clear conversation history                             |
| `/compact [instructions]` | Compact conversation                                   |
| `/config`                 | View/modify configuration                              |
| `/cost`                   | Show token usage statistics                            |
| `/doctor`                 | Check installation health                              |
| `/help`                   | Get usage help                                         |
| `/init`                   | Initialize project with `CLAUDE.md`                    |
| `/login`                  | Switch Anthropic accounts                              |
| `/logout`                 | Sign out                                               |
| `/mcp`                    | Manage MCP server connections                          |
| `/memory`                 | Edit `CLAUDE.md` memory files                          |
| `/model`                  | Select or change the AI model                          |
| `/permissions`            | View or update permissions                             |
| `/review`                 | Request code review                                    |
| `/status`                 | View account and system statuses                       |
| `/terminal-setup`         | Install Shift+Enter key binding                        |
| `/vim`                    | Enter vim mode                                         |

**Custom Slash Commands:**

- **Project commands**: `.claude/commands/`, prefix `/project:`
- **Personal commands**: `~/.claude/commands/`, prefix `/user:`
- **Arguments**: Use `$ARGUMENTS` placeholder.
- **Bash execution**: Use `!` prefix.
- **File references**: Use `@` prefix.

### 3.4. Memory Management (`CLAUDE.md`)

Claude remembers preferences and project context via `CLAUDE.md` files.

**Memory Locations:**

| Memory Type                | Location              | Purpose                                  |
| -------------------------- | --------------------- | ---------------------------------------- |
| **Project memory**         | `./CLAUDE.md`         | Team-shared instructions for the project |
| **User memory**            | `~/.claude/CLAUDE.md` | Personal preferences for all projects    |
| **Project memory (local)** | `./CLAUDE.local.md`   | Personal project-specific preferences (deprecated) |

**Features:**

- **Imports**: Use `@path/to/import` to include other files.
- **Recursive lookup**: Claude reads `CLAUDE.md` files from the current directory up to the root.
- **Quick add**: Start input with `#` to add a memory.
- **Direct edit**: Use `/memory` to edit memory files.

## 4. Common Workflows

- **Understand new codebases**: Ask for overviews, architecture patterns, and data models.
- **Fix bugs**: Share error messages and ask for fix recommendations.
- **Refactor code**: Identify legacy code and get refactoring suggestions.
- **Work with tests**: Identify untested code and generate test cases.
- **Create pull requests**: Summarize changes and generate PR descriptions.
- **Handle documentation**: Find undocumented code and generate comments.
- **Work with images**: Analyze screenshots, diagrams, and mockups.
- **Reference files and directories**: Use `@` to include file content or directory listings.
- **Use extended thinking**: Use "think", "think hard", etc., for complex tasks.
- **Resume conversations**: Use `--continue` or `--resume`.
- **Parallel sessions**: Use Git worktrees for isolated environments.
- **Unix-style utility**: Pipe data in and out, control output format.

## 5. Advanced Features

### 5.1. Claude Code SDK

Integrate Claude Code programmatically into your applications.

- **Authentication**: Use `ANTHROPIC_API_KEY`, or configure for Amazon Bedrock or Google Vertex AI.
- **Command line**: `claude -p "prompt"`
- **TypeScript**: `@anthropic-ai/claude-code` package on NPM.
- **Python**: `claude-code-sdk` on PyPI.

### 5.2. Hooks

Customize Claude Code's behavior with user-defined shell commands.

- **Events**: `PreToolUse`, `PostToolUse`, `Notification`, `Stop`, `SubagentStop`.
- **Configuration**: In `settings.json` files.
- **Input**: JSON data via stdin.
- **Output**: Exit codes or JSON for more control.
- **Security**: Hooks execute with your user permissions. Use with caution.

### 5.3. Model Context Protocol (MCP)

Extend Claude Code with external tools and data sources.

- **Configuration**: Use `claude mcp` commands to add, list, and remove servers.
- **Scopes**: `local`, `project`, `user`.
- **Authentication**: Supports OAuth 2.0 for remote servers via `/mcp` command.
- **Resources**: Reference MCP resources with `@server:protocol://resource/path`.
- **Prompts**: MCP servers can expose prompts as slash commands.

### 5.4. Subagents (Task Tool)

Launch independent agents for autonomous research and analysis.

- **Usage**: Use the `Task` tool for searching codebases, research-heavy tasks, and parallel processing.
- **Parallelism**: Supports up to 10 parallel tasks. For optimal efficiency, do not specify a parallelism level and let Claude manage it dynamically.
- **Context Window**: Each subagent has its own context window.

## 6. Enterprise Deployment

### 6.1. Identity and Access Management (IAM)

- **Authentication**: Anthropic API, Amazon Bedrock, or Google Vertex AI.
- **Permissions**: Configure tool permissions with `/permissions` or in `settings.json`.
    - **Modes**: `default`, `acceptEdits`, `plan`, `bypassPermissions`.
    - **Rules**: `Tool(optional-specifier)` format, e.g., `Bash(git diff:*)`.
- **Managed Policies**: Enforce security policies via `managed-settings.json`.

### 6.2. Cloud Providers

- **Amazon Bedrock**: Use Claude models through AWS infrastructure.
- **Google Vertex AI**: Access Claude models via Google Cloud Platform.

### 6.3. Corporate Infrastructure

- **Corporate Proxy**: Configure via `HTTPS_PROXY` environment variable.
- **LLM Gateway**: Use services like LiteLLM for centralized management.

### 6.4. Monitoring (OpenTelemetry)

- **Enablement**: `export CLAUDE_CODE_ENABLE_TELEMETRY=1`.
- **Exporters**: `otlp`, `prometheus`, `console`.
- **Configuration**: Use `OTEL_*` environment variables.
- **Metrics**: Session count, lines of code, cost, token usage, etc.
- **Events**: User prompts, tool results, API requests, etc.

## 7. GitHub Actions

Integrate Claude Code into your GitHub workflow.

- **Usage**: Mention `@claude` in a PR or issue.
- **Setup**: Use `/install-github-app` or manual setup.
- **Use Cases**: Turn issues into PRs, get implementation help, fix bugs.
- **Best Practices**: Use `CLAUDE.md` for guidelines, manage secrets securely.
- **Cloud Providers**: Can be configured to work with AWS Bedrock and Google Vertex AI.

## 8. Troubleshooting

- **Linux permission issues**: Create a user-writable npm prefix.
- **Auto-updater issues**: Fix npm permissions or disable with `DISABLE_AUTOUPDATER=1`.
- **Authentication issues**: Run `/logout`, restart, or remove `~/.config/claude-code/auth.json`.
- **Performance issues**: Use `/compact`, restart sessions, or add large directories to `.gitignore`.
- **JetBrains ESC key issue**: Reconfigure terminal keybindings in JetBrains settings.
- **Getting help**: Use `/bug`, check the GitHub repository, or run `/doctor`.