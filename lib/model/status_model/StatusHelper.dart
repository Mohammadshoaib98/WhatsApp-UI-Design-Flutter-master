import 'package:whatsapp/model/status_model/StatusItemModel.dart';

class StatusHelper {

  static var statusList = [
    StatusItemModel("MyMother", "Today, 12:30 AM" , "assets/images/mom.jpg"),
    StatusItemModel("Hazem", "Today, 10:30 AM" , "assets/images/adham.jpg"),
    StatusItemModel("Yousef", "Today, 11:50 AM" , "assets/images/sobhi.jpg"),
    StatusItemModel("Ali", "Yesterday, 09:09 PM" , "assets/images/class.jpg")
  ];

  static StatusItemModel getStatusItem(int position) {
    return statusList[position];
  }

  static var itemCount = statusList.length;

}