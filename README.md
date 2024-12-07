# Python Project Template

This repository contains the template I use for Python projects.

## Usage

You can use this template by hitting the green `Use This Template` button at the top of the repository.

### Nix Flake

This template uses a nix flake for usage in NixOS systems.

Run `nix develop` to create a development shell with `uv` available. Keep in mind that this development shell uses `fish`.

### Uv

This template uses [uv](https://docs.astral.sh/uv/) for project and dependency management.

## Tools

-   `pyright`
-   `ruff`
-   `coverage.py`
-   `pytest`
-   `pre-commit`

## Setup

Clone the generated repository

```shell
git clone https://github.com/YourUsername/YourProject.git
cd YourProject
```

Change the `module_name` folder to whatever you'd like, and update `pyproject.toml` accordingly.

If you're using NixOS, create a development shell with

```shell
nix develop
```

Install your dependencies

```shell
uv sync
```

And install the `pre-commit` hooks.

```shell
uv run pre-commit install
```

You can run these hooks at any time with

```shell
uv run task precommit
```
