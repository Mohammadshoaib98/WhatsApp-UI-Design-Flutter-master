
import 'CallItemModel.dart';

class CallHelper {

  static var callList = [
    CallItemModel("Hazem Shoaib", "Today, 12:01 PM", "assets/images/adham.jpg"),
    CallItemModel("Yousef", "Yesterday, 8:30 PM" , "assets/images/corona.jpg"),
    CallItemModel("MyMother", "Yesterday, 3:00 PM" , "assets/images/mom.jpg"),
    CallItemModel("Mohammad", "Yesterday, 1:30 PM" , "assets/images/sobhi.jpg")

  ];

  static CallItemModel getCallItem(int position) {
    return callList[position];
  }

  static var itemCount = callList.length;

}