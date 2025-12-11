# Optional Dockerfile for library development
# This can be used for containerized development or CI/CD

FROM ghcr.io/astral-sh/uv:python3.12-bookworm-slim

WORKDIR /workspace

# Copy project files
COPY pyproject.toml uv.lock ./
COPY src/ ./src/
COPY tests/ ./tests/

# Install dependencies
RUN uv sync

# Default command runs tests
CMD ["uv", "run", "pytest"]
