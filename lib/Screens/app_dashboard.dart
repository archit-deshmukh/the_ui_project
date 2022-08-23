import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theuiproject/Screens/login_screen.dart';
import 'package:theuiproject/post_model.dart';
import 'package:theuiproject/services.dart';

class AppDashboard extends StatefulWidget {
  const AppDashboard({Key? key}) : super(key: key);

  @override
  State<AppDashboard> createState() => _AppDashboardState();
}
class _AppDashboardState extends State<AppDashboard> {

  late List<Post>? _post = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }

  void _getData() async{
    _post = (await Services().getPosts())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState((){}));

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.greenAccent.shade100, Colors.green])
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text('API Parsing'),
              actions: <Widget>[
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                },
                    icon: const Icon(Icons.home),
                  color: Colors.white,alignment: Alignment.center,


                )
              ],
              centerTitle: true,
            ),
            body: _post == null || _post!.isEmpty ? const Center(
                child: CircularProgressIndicator(),
              ) : ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                        child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(_post![index].userId.toString()),
                                    SizedBox(height : 10,),
                                    Text(_post![index].title.toString(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                    SizedBox(height : 10,),
                                    Text(_post![index].body.toString(), style: TextStyle(fontSize: 13,), textAlign: TextAlign.center,maxLines: 3,),
                                  ],
                      ),
                    );
                  }),
            )
            )

        );
  }
}