import 'package:flutter/material.dart';
import 'dbHelper/mongodb.dart';
import 'dbHelper/MongoDbModelPost.dart';
import "constants.dart";
class MongoDBDisplay extends StatefulWidget {
  const MongoDBDisplay({Key? key}) : super(key: key);

  @override
  State<MongoDBDisplay> createState() => _MongoDBDisplayState();
}

class _MongoDBDisplayState extends State<MongoDBDisplay> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("CONNECT"),
        leading: Icon(Icons.person,size: 25,),
        actions: [Icon(Icons.add,size: 25,)],
      ),
      body: SafeArea(
        child: FutureBuilder(
            future: MongoDatabase.getData(),
            builder: (context, AsyncSnapshot snapshot){
              if(snapshot.connectionState==ConnectionState.waiting){
                print("Waiting for MongoDB connection");
                return Center(
                  child: CircularProgressIndicator(
                    color: Colors.orange,
                  ),
                );
              }
              else{
                print("MongoDB connection made Successfully");
                if(snapshot.hasData){
                  var totalData = snapshot.data.length ;
                  print("Total Data" + totalData.toString());
                  // return Text("Data Found");
                  return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context,index){
                        return postCard(MongoDbModelPost.fromJson(snapshot.data[index]),size);
                      });
                }
                else{
                  return Center(
                    child: Text("No Data Available"),
                  );
                }
              }
            }),
      ),
    );
  }
}

Widget postCard(MongoDbModelPost data,Size size){
  return Container(
    height: size.height * 0.53,
    width: size.width - 32,
    margin: const EdgeInsets.only(bottom: 20),
    padding: const EdgeInsets.fromLTRB(16, 11, 8, 10),
    decoration: BoxDecoration(
      color: kShadeColor.withOpacity(0.2),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 20.0,
                  child: Image.network('${data.profilePicUrl}'),
                ),
                SizedBox(width: 15),
                Text(
                  "${data.profileName}",
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w500,
                    color: kTextColor,
                  ),
                ),

              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${data.title}',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: kTextColor.withOpacity(0.6),
                ),
              ),
              Text(
                '${data.description}',
                softWrap: false,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: kTextColor.withOpacity(0.6),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Center(
          child: Image.network(
            "${data.imageUrl}",
            height: 200,
            width: 400,
          ),
        ),
        const SizedBox(height: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.heart_broken,
                      color: Colors.red,
                      size: 40,
                    ),

                    const SizedBox(width: 1),
                    Text(
                      '${data.likes.length}',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: kTextColor.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.comment,
                      color: Colors.blue,
                      size: 40,
                    ),

                    const SizedBox(width: 1),
                    Text(
                      '${data.comments.length}',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: kTextColor.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}