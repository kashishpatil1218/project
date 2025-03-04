import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpSupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff2E435B),
              shape: BoxShape.circle,
            ),
            child: Image.asset('asset/img/MAIN.png'),
          ),
        ),
        title: Text(
          'Help & Support',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('1. FAQs (Frequently Asked Questions)'),
            _buildSubTitle('General Questions:'),
            _buildBulletPoint(
              'How do I create an event?\nGo to the Home Screen → Tap "Add Event" → Fill in details → Save.',
            ),
            _buildBulletPoint(
              'How do I reset my password?\nGo to Login Screen → Tap "Forgot Password" → Enter your email to receive a reset link.',
            ),
            SizedBox(height: 10),
            _buildSubTitle('Event Management:'),
            _buildBulletPoint(
              'How do I add guests to an event?\nOpen the event from the Home Screen → Tap "Manage Guests" → Add guest details.',
            ),
            _buildBulletPoint(
              'Can I delete an event?\nYes. Open the event → Tap the three dots menu → Select "Delete Event."',
            ),
            SizedBox(height: 10),
            _buildSubTitle('Budget and Expenses:'),
            _buildBulletPoint(
              'How do I add an expense to my event?\nOpen the event → Go to "Budget" → Tap "Add Expense" → Fill out the expense details.',
            ),
            SizedBox(height: 10),
            _buildSubTitle('RSVP Management:'),
            _buildBulletPoint(
              'How do I send invitations?\nGo to "Manage Guests" → Tap "Send Invitations" → Choose a template → Send via email or link.',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('2. Tutorials and Guides'),
            _buildBulletPoint(
              'Step-by-Step Video Tutorials:\n- "How to Create and Manage an Event"\n- "Using the Budget Tracker Effectively"\n- "Organizing Your Task List"',
            ),
            _buildBulletPoint(
              'Interactive Guides:\n- Integrated walkthroughs for onboarding key features (e.g., adding an event, managing guests).',
            ),
            SizedBox(height: 20),
            _buildSectionTitle('3. Contact Support'),
            _buildBulletPoint('Options to Get in Touch:'),
            _buildBulletPoint(
              '- Live Chat: Button to start chatting with a support agent.',
            ),
            _buildBulletPoint(
              '- Email Support: Email form with pre-filled categories (e.g., Technical Issue, Feature Request).',
            ),
            _buildBulletPoint(
              '- Phone Support (if available): Display a helpline number.',
            ),
            _buildBulletPoint(
              '- Social Media Links: Links to social media accounts for updates or feedback.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: 20,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildSubTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0, bottom: 4.0),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: 20,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0, bottom: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '• ',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
