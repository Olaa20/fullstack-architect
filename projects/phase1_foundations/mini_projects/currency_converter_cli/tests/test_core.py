from projects.phase1_foundations.mini_projects.currency_converter_cli.currency_converter_cli.core import convert
import pytest

def test_same_currency():
    assert convert(10, "EUR", "EUR") == 10

def test_known_pair():
    assert convert(100, "EUR", "USD") > 0

def test_unknown_pair():
    with pytest.raises(ValueError):
        convert(10, "GBP", "JPY")
