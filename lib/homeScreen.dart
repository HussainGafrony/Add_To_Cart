import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/provider/setvalue.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController lastcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 45,
            width: 250,
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(10.0),
            child: Text(
              (Provider.of<SetvalueProvider>(context, listen: true)
                          .namevalue) ==
                      null
                  ? 'Name Empty '
                  : Provider.of<SetvalueProvider>(context, listen: true)
                      .namevalue,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown),
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
          ),
          Container(
            height: 45,
            width: 250,
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(10.0),
            child: Text(
              (Provider.of<SetvalueProvider>(context, listen: true)
                          .lastvalue) ==
                      null
                  ? 'Input 1 Value'
                  : Provider.of<SetvalueProvider>(context, listen: true)
                      .lastvalue,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown),
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 24),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    child: TextFormField(
                      autocorrect: true,
                      maxLines: 1,
                      enabled: true,
                      autofocus: true,
                      cursorColor: Colors.transparent,
                      controller: nameController,
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red),
                      textInputAction: TextInputAction.send,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.yellow, width: 1),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: "  Name ...",
                        // focusColor: ColorsApp().darkprimarycolor,
                        hintStyle: TextStyle(color: Colors.pink),
                        // helperText: 'Hussain'
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: Container(
                      height: 50,
                      child: TextFormField(
                        autocorrect: true,
                        maxLines: 1,
                        enabled: true,
                        autofocus: true,
                        cursorColor: Colors.transparent,
                        controller: lastcontroller,
                        keyboardType: TextInputType.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.red),
                        textInputAction: TextInputAction.send,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.yellow, width: 1),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          hintText: "  Last ...",
                          // focusColor: ColorsApp().darkprimarycolor,
                          hintStyle: TextStyle(color: Colors.pink),
                          // helperText: 'Hussain'
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.all(15),
              child: ElevatedButton(
                  onPressed: () {
                    Provider.of<SetvalueProvider>(context, listen: false)
                        .lisenervalue(
                      nameController.text.trim(),
                      lastcontroller.text.trim(),
                    );
                  },
                  child: Text('SAVE')),
            ),
          )
        ],
      ),
    );
  }
}
