RATES = {
    ("EUR","USD"): 1.08,
    ("USD","EUR"): 0.93,
    ("EUR","XOF"): 655.957,
    ("XOF","EUR"): 1/655.957,
}

def convert(amount: float, from_ccy: str, to_ccy: str) -> float:
    key = (from_ccy.upper(), to_ccy.upper())
    if from_ccy.upper() == to_ccy.upper(): return amount
    if key not in RATES: raise ValueError(f"Unsupported pair: {key}")
    return round(amount * RATES[key], 4)
