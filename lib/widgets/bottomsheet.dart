import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bottom Sheet Widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 0,
                isDismissible: false,
                enableDrag: false,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)

                )),
                  context: context,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Text('orange'),
                          subtitle: Text('karan'),
                        ),
                         ListTile(
                          title: Text('orange'),
                          subtitle: Text('karan'),
                        ),
                         ListTile(
                          title: Text('orange'),
                          subtitle: Text('karan'),
                        ),
                         ListTile(
                          title: Text('orange'),
                          subtitle: Text('karan'),
                        ),
                         ListTile(
                          title: Text('orange'),
                          subtitle: Text('karan'),
                        )
                        ],
                    );
                  });
            },
            child: Text('Show Bottom Sheet')),
      ),
    );
  }
}
