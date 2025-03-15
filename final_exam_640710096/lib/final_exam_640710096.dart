import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),  // เริ่มต้นที่หน้า Home
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
            // เมื่อกดปุ่มจะไปที่หน้า Profile
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 237, 238, 241),  // เปลี่ยนจาก primary เป็น backgroundColor
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),  // ขยายขนาดของปุ่ม
            textStyle: const TextStyle(
              fontSize: 20,  // ขนาดของข้อความในปุ่ม
              fontWeight: FontWeight.bold,  // ตัวหนา
            ),
          ),
          child: const Text('รู้จักกับฉัน'),  // ปุ่มที่แสดงข้อความ "รู้จักกับฉัน"
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
            padding: const EdgeInsets.all(16.0),  // Padding เพื่อเว้นระยะภายในกรอบ
            width: 350,  // ขนาดของกรอบ
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),  // มุมโค้ง
              boxShadow: const [
                BoxShadow(  // เงาของกรอบ
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                // ใช้ Stack เพื่อวางรูปภาพพื้นหลังและรูปโปรไฟล์ซ้อนกัน
                Stack(
                  clipBehavior: Clip.none,  // ไม่ให้คลิปเนื้อหาภายใน Stack
                  children: [
                    // รูปภาพพื้นหลัง
                    Container(
                      height: 160,  // ความสูงของภาพพื้นหลัง
                      width: double.infinity,  // ความกว้างให้เต็ม
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://www.wwe.com/f/styles/og_image/public/all/2024/04/004_RAW_04012024RF_52329--62e3139d062f6bea1bac9ec169006feb.jpg'),  // URL รูปพื้นหลัง
                          fit: BoxFit.cover,  // ให้รูปครอบคลุมพื้นที่
                        ),
                        borderRadius: BorderRadius.circular(16.0),  // มุมโค้งของกรอบ
                      ),
                    ),
                    // รูปโปรไฟล์เป็นวงกลมที่มีกรอบสีขาว
                    Positioned(
                      top: 100,  // ขยับรูปโปรไฟล์ให้สูงขึ้น
                      left: 10,  // ขยับรูปโปรไฟล์มาทางซ้าย
                      child: Container(
                        width: 120,  // ขนาดของรูปโปรไฟล์
                        height: 120,  // ขนาดของรูปโปรไฟล์
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,  // ให้รูปเป็นวงกลม
                          border: Border.all(
                            color: Colors.white,  // กรอบสีขาว
                            width: 4,  // ความหนาของกรอบ
                          ),
                          image: DecorationImage(
                            image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/1/11/Dwayne_%22The_Rock%22_Johnson_Visits_the_Pentagon_%2841%29_%28cropped%29.jpg'),  // URL รูปโปรไฟล์
                            fit: BoxFit.cover,  // ให้รูปโปรไฟล์ครอบคลุมพื้นที่
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 70),  // เพิ่มระยะห่างจากรูปโปรไฟล์ไปยังข้อความ
                // ข้อความในกรอบข้อมูล
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
                // เพิ่มอีเมลพร้อมไอคอน
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.mail, size: 24),  // ไอคอนรูปจดหมาย
                    const SizedBox(width: 10),  // ระยะห่างระหว่างไอคอนกับอีเมล
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
