int getLength(String? str) => str?.length ?? 0;

void main() {
  print(getLength("This is a string!"));
}
