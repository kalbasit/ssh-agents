# ssh-agents

The SSH agent is usually spawned by running `eval $(ssh-agent)`, however
this spawns a new SSH agent at every invocation. This project provides
an `ssh-agent` wrapper called `ssh-agents` that is capable of spawning
an SSH agent and caching the environment variables for later invocation.

# Features

- One SSH agent across all terminals
- Ability to have different keys in different agents for security
  purposes.

# Multiple SSH agents

To use multi-SSH agents, start ssh agent with the `--name` flag. The
given name is expected to be a folder under `~/.ssh/name` containing the
keys to include in the agent.

# License

All source code is licensed under the [MIT License](LICENSE).
