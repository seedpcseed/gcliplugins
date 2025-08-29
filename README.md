# Gemini CLI Plugins (Base Commands)

This repository provides a Gemini CLI command set mirroring the CCPlugins base collection.
Commands live under `base/.gemini/commands` and can be installed to your environment with a one-line script.

## Installation

### Linux / macOS
```bash
curl -fsSL https://raw.githubusercontent.com/<owner>/gcliplugins/main/install.sh | bash
```
Replace `<owner>` with the GitHub username or organization that owns this repository.

### Windows (PowerShell)
```powershell
iwr https://raw.githubusercontent.com/<owner>/gcliplugins/main/install.ps1 -useb | iex
```
Replace `<owner>` with the repository owner's GitHub username or organization.

## Base Commands
A brief summary of the included slash commands:

| Command | Description |
| --- | --- |
| `/cleanproject` | Remove debug artifacts with git safety |
| `/commit` | Conventional commits with context analysis |
| `/format` | Detect & run project formatter(s) |
| `/scaffold` | Scaffold features from detected patterns |
| `/test` | Run tests; summarize failures; propose fixes |
| `/implement` | Import/adapt code with validation |
| `/refactor` | Restructure code with validation & mapping |
| `/review` | Multi-angle code review (quality, arch, perf, sec) |
| `/security-scan` | Vulnerability & risk scan + remediation |
| `/predict-issues` | Predict risks, estimate timeline impact |
| `/remove-comments` | Remove obvious noise, keep valuable docs |
| `/fix-imports` | Normalize/repair imports after changes |
| `/find-todos` | Extract and group TODOs |
| `/create-todos` | Insert contextual TODOs for clear follow-ups |
| `/fix-todos` | Implement straightforward TODOs safely |
| `/understand` | Build mental model of project & architecture |
| `/explain-like-senior` | Senior-level explanations with context |
| `/contributing` | Check CONTRIBUTING readiness; propose updates |
| `/make-it-pretty` | Improve readability without behavior change |
| `/session-start` | Start structured work session; set goals |
| `/session-end` | Summarize progress; next steps; diffs |
| `/docs` | Curate and update project docs |
| `/todos-to-issues` | Convert TODOs into GitHub issues |
| `/undo` | Safe rollback via git checkpoint |

For detailed usage examples see the files in [`docs/commands`](docs/commands).

## Custom Commands

To add your own commands:
1. Copy the template at [`docs/templates/command_template.toml`](docs/templates/command_template.toml).
2. Edit the file with your command name and instructions.
3. Save it to `.gemini/commands/<command>.toml` in your project or `~/.gemini/commands` for global use.
4. Restart Gemini CLI to load the new command.

## License

MIT License. See [LICENSE](LICENSE) for details.
