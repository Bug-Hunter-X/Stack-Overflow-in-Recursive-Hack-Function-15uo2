function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}
This code will throw a Stack Overflow exception for larger inputs because it's recursively calling the function without a base case. In Hack, the maximum recursion depth is limited, causing the program to crash.