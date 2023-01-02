import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff000000),
        centerTitle: true,
        title: Text("Settings"),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff000000),
              Color(0xff212121),
              Color(0xff242323),
              Color(0xff000000),
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.info_outline, color: Colors.white),
              title: Text(
                "Version",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              trailing: Text("1.0.0", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.payments, color: Colors.white),
              title: Text(
                "Pay for ad-free version",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
            ),
            ListTile(
              leading: Icon(Icons.star, color: Colors.white),
              title: Text(
                "Rate the app",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
            ),
            InkWell(
              onTap: () async {
                await Share.share(
                    'https://play.google.com/store/apps/details?id=com.dword.bluetooth_device_manager');
              },
              child: ListTile(
                leading: Icon(Icons.share, color: Colors.white),
                title: Text(
                  "Share the app",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(Icons.info_outline, color: Colors.white),
              title: Text(
                "License",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
