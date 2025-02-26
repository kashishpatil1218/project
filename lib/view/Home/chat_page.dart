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
              IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_new_sharp,
                  size: 18,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              const CircleAvatar(
                // TODO Replace your profile here
                backgroundImage: NetworkImage(
                  "https://via.placeholder.com/50",
                ),
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
              SizedBox(width:60),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.video_call_outlined, color: Color(0xff2E435B)),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.call, color: Color(0xff2E435B)),
              ),
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
                IconButton(
                  icon: const Icon(Icons.attachment, color: Colors.grey),
                  onPressed: () {},
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const TextField(
                      
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.copy,color: Colors.grey,),
                        hintText: "Write your message",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),

                IconButton(
                  icon: const Icon(Icons.camera_alt, color: Colors.grey),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.mic, color: Colors.grey),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
