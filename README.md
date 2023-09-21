# Python Project Template

[![Tests](https://github.com/AbooMinister25/python-project-template/actions/workflows/lint-test.yml/badge.svg)](https://github.com/AbooMinister25/python-project-template/actions/workflows/lint-test.yml)
![Code coverage](https://img.shields.io/codecov/c/github/AbooMinister25/python-project-template)
[![License](https://img.shields.io/github/license/AbooMinister25/python-project-template?color=blue)](https://github.com/AbooMinister25/python-project-template/blob/main/LICENSE)
[![Code Style - Black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)

This repository contains the template I use for python projects.

## Usage

You can use this template by hitting the green `Use This Template` button at the top of the repository.

## Setup

Clone the generated repository.

```
git clone https://github.com/YourUsername/YourProject.git
```

Change `module_name` to whatever your project is called.

Replace `module_name` with whatever you renamed it to throughout the `pyproject.toml` file.

Install dependencies.

```
pdm sync
```

Activate the virtual environment.

```
eval $(pdm venv activate for-test)  # If you're using bash/csh/zsh
eval (pdm venv activate for-test)  # If you're using fish
Invoke-Expression (pdm venv activate for-test)  # If you're using powershell
```

Set up `pre-commit`

```
pdm run pre-commit install
```

## Scripts

This template ships with predefined PDM scripts you can use to run various commands.

Run formatters (`black` and `isort`)

```
pdm format
```

Run lints (`pyright` and `flake8`)

```
pdm lint
```

Run tests (`pytest`)

```
pdm test
```

Run coverage.py and generate report.

```
pdm coverage
```

Run pre-commit

```
pdm precommit
```

## Tools

### PDM

This template uses [PDM](https://pdm.fming.dev/latest/) for dependency and packaging management.

### Github Actions

This template comes with Github Actions configured for running lints, tests, and uploading coverage
reports to codecov (you will need a codecov account).

### Pyright

This template comes with `pyright` for strict type-checking of your python files.

### Flake8

This template comes with `flake8` for linting.

### Isort & Black

`isort` and `black` are used for formatting python files.

### Coverage.py & Pytest

`pytest` is used for running the test suite under `tests/`, and `coverage.py` is used for checking code coverage.

### pre-commit

pre-commit is used for managing pre-commit hooks for this template. The hooks run are for formatting
and linting. Configuration is in `.pre-commit-config.yaml`.
