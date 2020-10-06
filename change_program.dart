void main() {
  int total = 125;
  int moneyCustomer = 500;
  int leftChange = moneyCustomer - total;

  List<int> arrMoneyList = [1, 2, 5, 10, 20, 50, 100, 500];
  int sizeOfArr = arrMoneyList.length;
  changeMoney(arrMoneyList, leftChange, sizeOfArr);
}

void changeMoney(List<int> arrMoneyList, int leftChange, int sizeOfArr) {
  if (leftChange >= arrMoneyList[sizeOfArr - 1]) {
    final result = (leftChange / arrMoneyList[sizeOfArr - 1]).round();
    leftChange = leftChange % arrMoneyList[sizeOfArr - 1];
    if (result > 0) {
      print('Change ${arrMoneyList[sizeOfArr - 1]}: ${result}');
    }
  }

  if (leftChange <= 0) {
    print("Success");
    return;
  }

  changeMoney(arrMoneyList, leftChange, sizeOfArr - 1);
}
