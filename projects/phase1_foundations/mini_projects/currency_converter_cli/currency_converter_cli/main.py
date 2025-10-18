from .core import convert

def run():
    print("Currency Converter (mock rates)")
    while True:
        src = input("From (EUR/USD/XOF or q): ").strip().upper()
        if src == "Q": break
        dst = input("To (EUR/USD/XOF): ").strip().upper()
        try:
            amt = float(input("Amount: "))
            print(f"= {convert(amt, src, dst)} {dst}")
        except Exception as e:
            print(f"Error: {e}")

if __name__ == "__main__":
    run()
