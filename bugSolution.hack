function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else if (x < 0) {
    return 0; // Handle negative inputs
  } else if (x > 10) { // Add a check to prevent excessively large inputs
    return 0;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}
The solution adds a check for negative inputs and excessively large inputs in addition to the base case, which handles 0. This prevents stack overflows for most valid inputs. 