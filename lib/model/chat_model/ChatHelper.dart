
import 'ChatItemModel.dart';

class Chats {

  static var chatList = [
    ChatItemModel("Dr.Dima Shoaib", "We had meeting soon.", "10:30 AM" , "assets/images/dr.jpg"),
    ChatItemModel("Ahmad Al Nufais", "Give me reminder", " 9:00 PM", "assets/images/nufais.jpg"),
    ChatItemModel("My Mother", "Good Night", "Yesterday" , "assets/images/mom.jpg" ),
    ChatItemModel("Hazem Shoaib", "Hello Hazem", "Wednesday" , "assets/images/adham.jpg" ),
    ChatItemModel("MyLove", "Not found !", "Error", "assets/images/mohammad_shoaib.jpg")];

  static ChatItemModel getChatItem(int position) {
    return chatList[position];
  }

  static var itemCount = chatList.length;

}