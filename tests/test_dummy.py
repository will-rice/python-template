"""Tests for template."""

from template import hello_world


def test_hello_world_default() -> None:
    """Test hello_world with default parameter."""
    assert hello_world() == "Hello, World!"


def test_hello_world_custom_name() -> None:
    """Test hello_world with custom name."""
    assert hello_world("Python") == "Hello, Python!"
