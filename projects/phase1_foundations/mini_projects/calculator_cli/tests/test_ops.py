from projects.phase1_foundations.mini_projects.calculator_cli.calculator_cli.ops import add, sub, mul, div
import pytest

def test_add(): assert add(2,3)==5
def test_sub(): assert sub(5,3)==2
def test_mul(): assert mul(2,4)==8
def test_div(): assert div(8,2)==4
def test_div_zero():
    with pytest.raises(ZeroDivisionError):
        div(1,0)
