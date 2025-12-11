# Python Library Template

A template for creating Python libraries with modern tooling and best practices.

## Features

- 🐍 Python 3.11+ support
- 🧹 Code quality tools (Ruff, MyPy, pre-commit)
- 🧪 Testing with pytest
- 📦 Modern Python packaging with uv and hatchling
- 🔧 Pre-configured development environment
- 📝 Google-style docstrings

## Quick Start

### Using This Template

1. **Click "Use this template"** on GitHub to create your own repository
2. **Clone your new repository:**

   ```bash
   git clone https://github.com/yourusername/your-library-name.git
   cd your-library-name
   ```

3. **Customize the template:**
   - Rename `src/my_library` to `src/your_library_name`
   - Update `pyproject.toml` with your project details (name, description, author)
   - Update `tool.ruff.lint.isort.known-first-party` in `pyproject.toml`
   - Update this README with your project information

### Local Development

1. **Install uv (if not already installed):**

   ```bash
   pip install uv
   ```

2. **Install dependencies:**

   ```bash
   uv sync
   ```

3. **Install pre-commit hooks:**

   ```bash
   uv run pre-commit install
   ```

## Development

### Code Quality

This template includes several tools to maintain code quality:

- **Ruff**: Fast Python linter and formatter
- **MyPy**: Static type checking
- **pytest**: Testing framework
- **pre-commit**: Git hooks for automated checks

### Running Tests

```bash
uv run pytest
```

### Linting and Formatting

```bash
# Check for issues
uv run ruff check

# Format code
uv run ruff format

# Fix auto-fixable issues
uv run ruff check --fix
```

### Type Checking

```bash
uv run mypy src/
```

### Pre-commit Hooks

Pre-commit hooks run automatically on `git commit`. To run manually:

```bash
uv run pre-commit run --all-files
```

## Project Structure

```
python-library-template/
├── src/my_library/    # Main library code
│   ├── __init__.py    # Package initialization
│   └── core.py        # Core functionality
├── tests/             # Test files
│   └── test_dummy.py  # Example tests
├── pyproject.toml     # Project configuration and dependencies
├── .pre-commit-config.yaml  # Pre-commit hooks configuration
├── .gitignore         # Git ignore patterns
└── README.md          # This file
```

## Configuration

The project is configured through `pyproject.toml`, which includes:

- Project metadata and dependencies
- Ruff linting rules (following Google docstring convention)
- MyPy type checking settings
- pytest configuration

### Key Configuration Choices

- **Python version**: 3.11+ (configurable in `pyproject.toml`)
- **Docstring style**: Google format (enforced by Ruff)
- **Build backend**: Hatchling (modern, zero-config build system)
- **Package manager**: uv (fast, reliable dependency management)

## Building and Publishing

### Build the package

```bash
uv build
```

### Publish to PyPI

```bash
# Test PyPI
uv publish --index-url https://test.pypi.org/simple/

# Production PyPI
uv publish
```

## License

This project is licensed under the Apache License 2.0 - see the LICENSE file for details.
