import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Card(
          child: Row(
            children: [
              Image.asset(
                'asset/img/arrow_CHAT_PAGE.png',
                height: 50,
                width: 50,
              ),
              const CircleAvatar(
                // TODO Replace your profile here
                backgroundImage: NetworkImage("https://via.placeholder.com/50"),
              ),
              const SizedBox(width: 10),
              Text(
                "Hamda Said",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(width: 80),
              Image.asset('asset/img/CHAT_VIDEO_CALL.png'),
              SizedBox(width: 25),
              Image.asset('asset/img/CHAT_CALL.png'),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          const Expanded(child: SizedBox()),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: Colors.grey.shade300)),
            ),
            child: Row(
              children: [
                Image.asset('asset/img/Link.png'),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.copy, color: Colors.grey),
                        hintText: "Write your message",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),

                Image.asset('asset/img/CHAT_CAMERA.png'),
                SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('asset/img/CHAT_MIC.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
