class Solution {
  bool isValid(String s) {
    final stack = Stack<String>();
    final mapping = {')': '(', '}': '{', ']': '['};

    for (final char in s) {
      if (char == '(' || char == '{' || char == '[') {
        stack.add(char);
      } else if (char == ')' || char == '}' || char == ']') {
        if (stack.isEmpty || stack.pop() != mapping[char]) {
          return false;
        }
      }
    }

    return stack.isEmpty;
  }
}
