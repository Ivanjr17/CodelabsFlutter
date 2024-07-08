int? couldReturnNullButDoesnt() => -3;
int? couldBeNullButIsnt = 1;

void main() {
  List<int?> listThatCouldHoldNulls = [2, null, 4];

  int a = couldBeNullButIsnt!;
  int b = listThatCouldHoldNulls.first!;
  int c = couldReturnNullButDoesnt()!.abs();

  print('a is $a.');
  print('b is $b.');
  print('c is $c.');
}