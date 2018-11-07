# ssh-agents

The SSH agent is usually spawned by running `eval $(ssh-agent)`, however
this spawns a new SSH agent at every invocation. This project provides
an `ssh-agent` wrapper called `ssh-agents` that is capable of spawning
an SSH agent and caching the environment variables for later invocation.

# Features

- One SSH agent across all terminals
- Add all un-encrypted SSH keys to the agent upon spawning. Please note
  that encrypted SSH keys can only be added via `ssh-add`
  after having started the agent.
- Ability to have different keys in different agents for security
  purposes.

# Multiple SSH agents

To use multi-SSH agents, start ssh agent with the `--name` flag. The
given name is expected to be a folder under `~/.ssh/name` containing the
keys to include in the agent.

# Installation

Download the [ssh-agents](/bin/ssh-agents) file and place it somewhere
in your PATH and do not forget to make it executable.

# Usage

Add the following snippet to your shell rc file, such as `~/.profile`,
`~/.bashrc`, `~/.zshrc` or other similar files.

```shell
eval "$(ssh-agents)"
```

If you intend to use a different ssh agent name, pass the flag `--name`
to the `ssh-agents` call within the eval.

# Author

| [![twitter/ylcodes](https://avatars0.githubusercontent.com/u/87115?v=3&s=128)](http://twitter.com/ylcodes "Follow @ylcodes on Twitter") |
|---|
| [Wael Nasreddine](https://github.com/kalbasit) |

# License

All source code is licensed under the [MIT License](LICENSE).
