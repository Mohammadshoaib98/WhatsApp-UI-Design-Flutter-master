
import 'package:whatsapp/model/message_model/message_model.dart';



class MessageHelper {

  static var messageList = [
    MessageItemModel("Hazem", "Hello.", "9:00 AM"  , "msj"),
    MessageItemModel("Yousef", "How are you ?", "9:01 AM"  , "msj"),
    MessageItemModel("Mohammad", "where were you yesterday?", "9:03 AM" ,"msj" ),
    MessageItemModel('hazem', "what do you do?", "9:02 AM" ,"msj" ),
    MessageItemModel('Dima', "assets/images/ksa.jpg", " 9:02 AM", "image"),
    MessageItemModel("Ali ", "assets/images/corona.jpg", "9:05 AM" ,  "image"),
    MessageItemModel("MyMother", "Where do you live?", "9:05 PM" , "msj"),
    MessageItemModel("Yousef", "How !", "9:07 AM", "msj"),
    MessageItemModel("Yousef", "assets/images/sobhi.jpg", "9:06 AM" ,"image" ),
    MessageItemModel("Ahmad", "Do you like this idea?", "9:30 AM" ,  "msj"),
    MessageItemModel("Hazem", "Do you like this idea?", "9:35 AM" , "msj"),
    MessageItemModel("Yousef", "Do you like this idea?", "10:00 AM" , "msj"),
    MessageItemModel("Yousef", "Thank you ", "10:10 AM" , "msj"),


  ];

  static MessageItemModel getCHatList(int position) {
    return messageList[position];
  }

  static var itemCount = messageList.length;

}