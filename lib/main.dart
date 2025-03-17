import 'package:flutter/material.dart';

void main() {
  runApp(MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aman Kumar Portfolio',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: PortfolioHomePage(),
    );
  }
}

class PortfolioHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aman Kumar Portfolio', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.deepPurple,
        elevation: 0.0,
        toolbarHeight: 70.0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('About Me'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.work),
              title: Text('Projects'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contact'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Aman Kumar',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'Flutter Developer | Software Engineer',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
            SizedBox(height: 20),
            Text('Profile', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Software Engineer at Out Thinking Pvt Ltd with 1 year experience in mobile application development and Flutter. Hands-on experience in front-end and back-end development.'),
            SizedBox(height: 20),
            Text('Skills', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Technologies: Java, Flutter, Python, Data Structures and Algorithms, Rest API'),
            Text('Web Technologies: HTML, CSS, JavaScript, XML, JSON'),
            Text('Data Storage: MySQL, SQLite, Hive'),
            Text('Miscellaneous: React JS, Retrofit, Unix/Linux, Visual Studio, Eclipse IDEs, Android Studio'),
            SizedBox(height: 20),
            Text('Work Experience', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            ProjectCard(
              title: 'Online Job Searching Web Application',
              description: 'Developed an Admin Panel where admins can post, edit, and delete job listings. Users can register, log in, view jobs, filter by type and location, and apply for jobs.',
            ),
            SizedBox(height: 20),
            Text('Achievements / Certifications', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('• Android Mobile Applications Training from educba Learning Solution'),
            Text('• Web Development from Scratch Certification from eduonix Learning Solution'),
            Text('• Database Programming with SQL Certification from Oracle Academy'),
            SizedBox(height: 20),
            Text('Academic', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Panipat Institute of Engineering and Technology (PIET), Kurukshetra University, Kurukshetra'),
            Text('BTech in Computer Science (2019 - 2023): Secured 7.8 CGPA'),
            SizedBox(height: 20),
            Text('Contact', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            ContactItem(icon: Icons.email, text: 'iamaman1505@gmail.com'),
            ContactItem(icon: Icons.link, text: 'linkedin.com/in/your-profile'),
            ContactItem(icon: Icons.code, text: 'github.com/amankumar'),
            ContactItem(icon: Icons.phone, text: '+91-9128053578'),
          ],
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;

  ProjectCard({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text(description, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  final IconData icon;
  final String text;

  ContactItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.blue),
        SizedBox(width: 10),
        Text(text, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}