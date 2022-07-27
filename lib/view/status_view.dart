import 'package:flutter/material.dart';
import 'package:whatsapp/model/status_model/StatusHelper.dart';
import 'package:whatsapp/model/status_model/StatusItemModel.dart';


class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, position) {
              StatusItemModel statusItemModel = StatusHelper.getStatusItem(position);

              if(position == 0||position ==1){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    if (position==0)
                      Padding(
                      padding: const EdgeInsets.only(top: 10 , bottom: 5 , left: 20 ),
                      child: Text('Recent Updates' , style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 14),),
                    ),
                    ListTile(
                      leading: Container(
                        decoration:  BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green,
                            width: 2
                          )
                        ),
                        child:  CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage(statusItemModel.image),
                        ),
                      ),
                      title:  Text(
                        statusItemModel.name,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      subtitle: Text(
                        statusItemModel.name+", "+statusItemModel.dateTime,
                        style: Theme.of(context).textTheme.bodyText1,
                      ) ,
                    ),
                    const Divider(),
                  ],
                );

              }else {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    if(position==2)
                    Padding(
                      padding: const EdgeInsets.only(top: 10 , bottom: 5 , left: 20 ),
                      child: Text('Viewed Updates' , style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 14),),
                    ),
                    ListTile(
                      leading:  CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage(statusItemModel.image),
                      ),
                      title:  Text(
                        statusItemModel.name,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      subtitle: Text(
                        statusItemModel.name+", "+statusItemModel.dateTime,
                        style: Theme.of(context).textTheme.bodyText1,
                      ) ,
                    ),
                    const Divider(),
                  ],
                );

              }
            },
            itemCount: StatusHelper.itemCount,
          ),
        ),

      ],
    );
  }
}
