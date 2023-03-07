import 'package:flutter/material.dart';

class Yo extends StatefulWidget {
  const Yo({Key? key}) : super(key: key);

  @override
  _YoState createState() => _YoState();
}

class _YoState extends State<Yo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Whatsapp'),
          // centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_enhance),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              ),
            ],
          ),
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                icon: Icon(Icons.more_vert_outlined),
                itemBuilder: (
                  context,
                ) =>
                    [
                      PopupMenuItem(
                        value: '1',
                        child: Text('New group'),
                      ),
                      PopupMenuItem(
                        value: '2',
                        child: Text('New broadcast'),
                      ),
                      PopupMenuItem(
                        value: '3',
                        child: Text('Linked device'),
                      ),
                      PopupMenuItem(
                        value: '4',
                        child: Text('Starred messages'),
                      ),
                      PopupMenuItem(
                        value: '6',
                        child: Text('Settings'),
                      ),
                    ]),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(children: [
          Text('Camera'),
          ListView.builder(
            itemCount: 30,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/photo.jpg')),
                trailing: Text('11:15  PM'),
                title: Text('Basit Uni',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text(
                  'Tomorrow you will go to university?',
                ),
              );
            },
          ),
          ListView.builder(
            itemCount: 7,
            itemBuilder: (context, index) {
              if (index == 0) // it is a listview builder index
              {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                          title: Text(
                            'My status',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Tap to add status update',
                          ),
                          leading: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              radius: 25.0,
                              child: CircleAvatar(
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    radius: 12.0,
                                    child: Icon(
                                      Icons.add,
                                      size: 15.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                radius: 38.0,
                                backgroundColor: Colors.black,
                              ),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Recent Updates',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      )
                    ],
                  ),
                );
              } else {
                return ListTile(
                  leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 3)),
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.black,
                        backgroundImage: AssetImage('assets/photo2.png'),
                      )),
                  title: Text(
                    'Wahaj Uni',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '37 minutes ago',
                  ),
                );
              }
            },
          ),
          ListView.builder(
            itemCount: 30,
            itemBuilder: (context, index) {
              return ListTile(
                leading:
                    CircleAvatar(radius: 22, backgroundColor: Colors.black),
                trailing: Icon(
                  index / 2 == 0
                      ? Icons.call
                      : Icons.video_camera_front_rounded,
                  color: Colors.blue,
                ),
                title: Text('Saad Uni',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle:
                    Text(index / 2 == 2 ? 'Today, 12:36PM' : 'Yesterday, 1:42'),
              );
            },
          ),
        ]),
      ),
    );
  }
}
