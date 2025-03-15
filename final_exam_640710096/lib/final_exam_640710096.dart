import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
           
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 237, 238, 241),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: const Text('รู้จักกับฉัน'),
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: const [
                BoxShadow( 
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    
                    Container(
                      height: 160,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://www.wwe.com/f/styles/og_image/public/all/2024/04/004_RAW_04012024RF_52329--62e3139d062f6bea1bac9ec169006feb.jpg'),  // URL รูปพื้นหลัง
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    
                    Positioned(
                      top: 100,
                      left: 10,
                      child: Container(
                        width: 120,
                        height: 120, 
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 4, 
                          ),
                          image: DecorationImage(
                            image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/1/11/Dwayne_%22The_Rock%22_Johnson_Visits_the_Pentagon_%2841%29_%28cropped%29.jpg'),  // URL รูปโปรไฟล์
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 70),
              
                const Text(
                  'Wisarut Phongern',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  'สาขา IT',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),
                const Text(
                  'รหัสนักศึกษา 640710096',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 20),
               
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.mail, size: 24),  
                    const SizedBox(width: 10),  
                    const Text(
                      'phongern_w@silpakorn.edu',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'ชอบวาดรูปแต่ดันมานั่งพิมพ์โค้ด',
                  style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
