from .ops import add, sub, mul, div

def menu() -> None:
    print("Calculator CLI")
    print("[1] add  [2] sub  [3] mul  [4] div  [q] quit")

def run() -> None:
    while True:
        menu()
        choice = input("> ").strip().lower()
        if choice == "q": break
        if choice not in {"1","2","3","4"}:
            print("Invalid option"); continue
        try:
            a = float(input("a = "))
            b = float(input("b = "))
            res = {"1": add, "2": sub, "3": mul, "4": div}[choice](a, b)
            print(f"= {res}")
        except Exception as e:
            print(f"Error: {e}")

if __name__ == "__main__":
    run()
