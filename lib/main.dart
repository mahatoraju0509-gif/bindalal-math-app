import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

const String adminEmail = 'bindalal@gmail.com';
const String adminPassword = 'bindalal123';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bindalal Sir Math App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

// ============ HOME SCREEN ============
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _showDeveloperDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: Colors.green.shade50,
        title: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.green, width: 3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.green.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 15,
                  ),
                ],
              ),
              child: const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/developer.jpg'),
              ),
            ),
            const SizedBox(width: 12),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Raju Mahato', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text('(Nuniya)', style: TextStyle(fontSize: 14, color: Colors.grey)),
              ],
            ),
          ],
        ),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(color: Colors.green),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('👤 PERSONAL INFORMATION', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 16)),
                    const SizedBox(height: 8),
                    _buildInfoRow('🎂 Date of Birth:', '25 August 2002'),
                    _buildInfoRow('🇳🇵 Nationality:', 'Nepali'),
                    _buildInfoRow('💍 Marital Status:', 'Unmarried'),
                    _buildInfoRow('📍 Current Residence:', 'Kyoto, Japan'),
                    _buildInfoRow('🏠 Permanent Address:', 'Yamunamai Rural Municipality-1, Jethrahia, Rautahat, Madhesh Province, Nepal'),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('🎓 EDUCATION & WORK', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 16)),
                    const SizedBox(height: 8),
                    _buildInfoRow('🎓 Education:', 'Kyoto Computer Gakuin (KCG), Kyoto, Japan'),
                    _buildInfoRow('💼 Profession:', 'Independent Full Stack Developer'),
                    _buildInfoRow('🏢 Employment:', 'Part-time Associate at World Leading Global Tech Company (Privacy Policy - Name not disclosed)'),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('🌍 LANGUAGES', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange, fontSize: 16)),
                    const SizedBox(height: 8),
                    const Text('🇳🇵 Nepali, 🇬🇧 English, 🇯🇵 Japanese, 🇮🇳 Hindi, Bajjika, Bhojpuri, Maithili, Theti'),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.pink.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('👨‍👩‍👧 FAMILY', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink, fontSize: 16)),
                    const SizedBox(height: 8),
                    _buildInfoRow('👨 Father:', 'Late Ram Kailash Mahato (Martyr of Nepal\'s 10-Year People\'s Movement)'),
                    _buildInfoRow('👩 Mother:', 'Government School Teacher'),
                    _buildInfoRow('👧 Siblings:', 'One younger sister (coming to Japan for IT study)'),
                    _buildInfoRow('👦 Family Status:', 'Only Son'),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.purple.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('💻 PROFESSIONAL', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple, fontSize: 16)),
                    const SizedBox(height: 8),
                    const Text('⭐ Nepal\'s Best & Top Individual App Developer', style: TextStyle(fontWeight: FontWeight.bold)),
                    const Text('✅ 30+ Live Projects as Solo Developer'),
                    const SizedBox(height: 4),
                    const Text('🔹 EduPath AI - Nepal\'s First AI-powered Education App', style: TextStyle(fontSize: 13)),
                    const Text('🔹 Thagi Satark - Nepal\'s First AI Fraud Awareness App', style: TextStyle(fontSize: 13)),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.teal.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('📞 CONTACT', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal, fontSize: 16)),
                    const SizedBox(height: 8),
                    _buildInfoRow('📱 Phone/WhatsApp:', '+81 09036694264'),
                    _buildInfoRow('🌐 Portfolio:', 'https://nepalwebsitedeveloper.com'),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.amber.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('🏆 FEATURED PROJECTS', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.amber, fontSize: 16)),
                    const SizedBox(height: 8),
                    const Text('🔹 EduPath AI - Nepal\'s First AI Education App', style: TextStyle(fontSize: 13)),
                    const Text('🔹 Thagi Satark - Nepal\'s First AI Fraud Awareness App', style: TextStyle(fontSize: 13)),
                    const Text('🔹 Madhav Kumar Nepal (Former PM) - https://madhavnepal.online', style: TextStyle(fontSize: 13)),
                    const Text('🔹 Bharat Prasad Shah (Former Minister) - https://bharatshah.online', style: TextStyle(fontSize: 13)),
                  ],
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('🔒 बन्द गर्नुहोस्', style: TextStyle(color: Colors.green)),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 80,
            child: Text(label, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
          ),
          Expanded(
            child: Text(value, style: const TextStyle(fontSize: 13)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bindalal Sir Math App', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.green.shade800,
        elevation: 0,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.green.shade50,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [Color(0xFF1B5E20), Color(0xFF2E7D32)]),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                ),
                child: Column(children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 3),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 15,
                        ),
                      ],
                    ),
                    child: const CircleAvatar(radius: 35, backgroundImage: AssetImage('assets/images/bindalal.png')),
                  ),
                  const SizedBox(height: 8),
                  const Text('Bindalal Sir', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                  const Text('Online Math Class', style: TextStyle(color: Colors.white70, fontSize: 12)),
                ]),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: ListView(
                  children: [
                    _buildDrawerItem(Icons.home, '🏠 होम', () => Navigator.pop(context)),
                    _buildDrawerItem(Icons.lock, '🔐 Student Access', () { Navigator.pop(context); Navigator.push(context, MaterialPageRoute(builder: (c) => const StudentAccessScreen())); }),
                    _buildDrawerItem(Icons.admin_panel_settings, '⚙️ Admin Panel', () { Navigator.pop(context); Navigator.push(context, MaterialPageRoute(builder: (c) => const AdminLoginScreen())); }),
                    const Divider(),
                    _buildDrawerItem(Icons.logout, '🚪 लगआउट', () { Navigator.pop(context); ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Logout आउँदै छ'))); }, Colors.red),
                    const Divider(color: Colors.green),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      child: ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.green, width: 2),
                          ),
                          child: const CircleAvatar(
                            radius: 18,
                            backgroundImage: AssetImage('assets/images/developer.jpg'),
                          ),
                        ),
                        title: const Text(
                          '👨‍💻 Developer',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 14),
                        ),
                        subtitle: const Text('Raju Mahato', style: TextStyle(fontSize: 11)),
                        trailing: const Icon(Icons.arrow_forward, color: Colors.green, size: 18),
                        onTap: () {
                          Navigator.pop(context);
                          _showDeveloperDialog(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFE8F5E9), Colors.white],
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF1B5E20), Color(0xFF2E7D32)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: const CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage('assets/images/bindalal.png'),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bindalal Sir',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Online Math Class',
                            style: TextStyle(fontSize: 11, color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.amber.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: const Text(
                        '★ 4.9',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: _buildMainCard(
                          icon: Icons.lock,
                          title: 'Student Access',
                          subtitle: 'Code हालेर Content हेर्नुहोस्',
                          color: Colors.blue,
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (c) => const StudentAccessScreen()),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        flex: 1,
                        child: _buildMainCard(
                          icon: Icons.admin_panel_settings,
                          title: 'Admin Panel',
                          subtitle: 'Sir ले Login गरेर Manage',
                          color: Colors.orange,
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (c) => const AdminLoginScreen()),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 6),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF1B5E20), Color(0xFF2E7D32)],
                  ),
                ),
                child: InkWell(
                  onTap: () => _showDeveloperDialog(context),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 12,
                        backgroundImage: AssetImage('assets/images/developer.jpg'),
                      ),
                      const SizedBox(width: 6),
                      const Text(
                        '👨‍💻 Developed by Raju Mahato',
                        style: TextStyle(color: Colors.white70, fontSize: 10),
                      ),
                      const SizedBox(width: 4),
                      const Icon(Icons.verified, color: Colors.amber, size: 12),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String title, VoidCallback onTap, [Color color = Colors.green]) {
    return ListTile(
      leading: Icon(icon, color: color, size: 22),
      title: Text(title, style: TextStyle(color: color, fontSize: 14)),
      onTap: onTap,
      trailing: const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.grey),
    );
  }

  Widget _buildMainCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color, color.withOpacity(0.7)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: 30,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white.withOpacity(0.3),
                      Colors.white.withOpacity(0.1),
                      Colors.white.withOpacity(0.0),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          spreadRadius: 8,
                          blurRadius: 16,
                        ),
                      ],
                    ),
                    child: Icon(icon, size: 35, color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.white.withOpacity(0.9),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Text(
                      '➜ Click',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============ ADMIN LOGIN ============
class AdminLoginScreen extends StatefulWidget {
  const AdminLoginScreen({super.key});

  @override
  State<AdminLoginScreen> createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;

  void _login() {
    if (_emailController.text.trim() == adminEmail && _passwordController.text.trim() == adminPassword) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) => const AdminPanelScreen()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('❌ गलत Email वा Password!'), backgroundColor: Colors.red),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🔐 Admin Login', style: TextStyle(color: Colors.white, fontSize: 16)),
        centerTitle: true,
        backgroundColor: Colors.orange.shade800,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.orange.shade50, Colors.white],
            ),
          ),
          padding: const EdgeInsets.all(20),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.admin_panel_settings, size: 60, color: Colors.orange),
                  const SizedBox(height: 12),
                  const Text('Admin Login', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orange)),
                  const SizedBox(height: 4),
                  const Text('Email र Password हाल्नुहोस्', style: TextStyle(color: Colors.grey, fontSize: 12)),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'bindalal@gmail.com',
                      prefixIcon: const Icon(Icons.email, color: Colors.orange),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: _passwordController,
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: '••••••••',
                      prefixIcon: const Icon(Icons.lock, color: Colors.orange),
                      suffixIcon: IconButton(
                        icon: Icon(_obscurePassword ? Icons.visibility_off : Icons.visibility, color: Colors.grey),
                        onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
                      ),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(double.infinity, 48),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    child: const Text('🔑 Login', style: TextStyle(fontSize: 16, color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ============ ADMIN PANEL ============
class AdminPanelScreen extends StatefulWidget {
  const AdminPanelScreen({super.key});

  @override
  State<AdminPanelScreen> createState() => _AdminPanelScreenState();
}

class _AdminPanelScreenState extends State<AdminPanelScreen> {
  final TextEditingController _youtubeController = TextEditingController();
  final TextEditingController _zoomController = TextEditingController();
  final TextEditingController _pdfController = TextEditingController();
  final TextEditingController _noticeController = TextEditingController();
  final TextEditingController _dailyCodeController = TextEditingController();

  String currentCode = '';

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _youtubeController.text = prefs.getString('youtubeLink') ?? '';
      _zoomController.text = prefs.getString('zoomLink') ?? '';
      _pdfController.text = prefs.getString('pdfLink') ?? '';
      _noticeController.text = prefs.getString('notice') ?? 'आजको Live Class साँझ ४ बजे';
      currentCode = prefs.getString('dailyCode') ?? 'bindalal2025';
      _dailyCodeController.text = currentCode;
    });
  }

  Future<void> _saveData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('youtubeLink', _youtubeController.text.trim());
    await prefs.setString('zoomLink', _zoomController.text.trim());
    await prefs.setString('pdfLink', _pdfController.text.trim());
    await prefs.setString('notice', _noticeController.text.trim());
    await prefs.setString('dailyCode', _dailyCodeController.text.trim());

    setState(() {
      currentCode = _dailyCodeController.text.trim();
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('✅ सबै सेटिङ सुरक्षित भयो!'), backgroundColor: Colors.green),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('⚙️ Admin Panel', style: TextStyle(color: Colors.white, fontSize: 16)),
        centerTitle: true,
        backgroundColor: Colors.green.shade800,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout, color: Colors.white),
            onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) => const AdminLoginScreen())),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.green.shade50, Colors.white],
            ),
          ),
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.blue.shade200),
                  ),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.qr_code, color: Colors.blue, size: 18),
                          SizedBox(width: 6),
                          Text('🔑 Daily Access Code', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      const SizedBox(height: 6),
                      TextField(
                        controller: _dailyCodeController,
                        decoration: InputDecoration(
                          hintText: 'नयाँ Code हाल्नुहोस्...',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.copy, color: Colors.blue, size: 16),
                            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('✅ Code Copy भयो!'), backgroundColor: Colors.green),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.green.shade100,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('हालको Code: ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11)),
                            Text(currentCode, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 13)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                _buildAdminCard(Icons.announcement, '📢 सूचना', _noticeController, 'आजको Live Class साँझ ४ बजे'),
                _buildAdminCard(Icons.youtube_searched_for, '🎥 YouTube Link', _youtubeController, 'https://www.youtube.com/watch?v=...'),
                _buildAdminCard(Icons.video_call, '🔴 Zoom Link', _zoomController, 'https://zoom.us/j/...'),
                _buildAdminCard(Icons.picture_as_pdf, '📄 PDF Link', _pdfController, 'https://example.com/notes.pdf'),
                const SizedBox(height: 12),
                ElevatedButton.icon(
                  onPressed: _saveData,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: const Size(double.infinity, 44),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  icon: const Icon(Icons.save, color: Colors.white, size: 16),
                  label: const Text('💾 सेटिङ सुरक्षित गर्नुहोस्', style: TextStyle(fontSize: 13, color: Colors.white)),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.blue.shade200),
                  ),
                  child: Column(
                    children: [
                      const Text('📤 Student लाई Share गर्नुहोस्', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(color: Colors.blue),
                              ),
                              child: Text('Code: ', style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue)),
                            ),
                          ),
                          const SizedBox(width: 4),
                          IconButton(
                            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('✅ Code Copy भयो!'), backgroundColor: Colors.green),
                            ),
                            icon: const Icon(Icons.copy, color: Colors.blue, size: 18),
                          ),
                        ],
                      ),
                      const Text(
                        'यो Code Student ले Student Access मा हालेपछि Content देख्न पाउँछन्',
                        style: TextStyle(fontSize: 9, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAdminCard(IconData icon, String title, TextEditingController controller, String hint) {
    return Card(
      margin: const EdgeInsets.only(bottom: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Icon(icon, color: Colors.green.shade700, size: 16),
              const SizedBox(width: 4),
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
            ]),
            const SizedBox(height: 4),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hint,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              ),
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

// ============ STUDENT ACCESS SCREEN ============
class StudentAccessScreen extends StatefulWidget {
  const StudentAccessScreen({super.key});

  @override
  State<StudentAccessScreen> createState() => _StudentAccessScreenState();
}

class _StudentAccessScreenState extends State<StudentAccessScreen> {
  final TextEditingController _codeController = TextEditingController();
  bool isAccessGranted = false;
  String youtubeLink = '';
  String zoomLink = '';
  String pdfLink = '';
  String notice = '';

  Future<void> _checkAccess() async {
    final code = _codeController.text.trim();
    final prefs = await SharedPreferences.getInstance();
    final savedCode = prefs.getString('dailyCode') ?? 'bindalal2025';

    if (code == savedCode) {
      if (mounted) {
        setState(() {
          isAccessGranted = true;
          youtubeLink = prefs.getString('youtubeLink') ?? '';
          zoomLink = prefs.getString('zoomLink') ?? '';
          pdfLink = prefs.getString('pdfLink') ?? '';
          notice = prefs.getString('notice') ?? 'आजको Live Class साँझ ४ बजे';
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('✅ Access Granted!'), backgroundColor: Colors.green),
        );
      }
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('❌ गलत Code!'), backgroundColor: Colors.red),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🔐 Student Access', style: TextStyle(color: Colors.white, fontSize: 16)),
        centerTitle: true,
        backgroundColor: Colors.blue.shade800,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue.shade50, Colors.white],
            ),
          ),
          padding: const EdgeInsets.all(12),
          child: isAccessGranted ? _buildContent() : _buildAccessForm(),
        ),
      ),
    );
  }

  Widget _buildAccessForm() {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.lock, size: 60, color: Colors.blue),
            const SizedBox(height: 16),
            const Text(
              'Access Code हाल्नुहोस्',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              'Teacher बाट प्राप्त Daily Code',
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _codeController,
              decoration: InputDecoration(
                hintText: 'Code हाल्नुहोस्...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(Icons.key, color: Colors.blue),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              ),
              obscureText: true,
              textInputAction: TextInputAction.done,
              onSubmitted: (_) => _checkAccess(),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _checkAccess,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(double.infinity, 48),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              child: const Text(
                '🔓 Content खोल्नुहोस्',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.amber.shade100,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.amber),
            ),
            child: Row(
              children: [
                const Icon(Icons.announcement, color: Colors.amber, size: 20),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    notice.isNotEmpty ? notice : 'आजको Live Class साँझ ४ बजे',
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 4,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.9,
            children: [
              _build3DFeatureCard(
                icon: Icons.youtube_searched_for,
                title: 'YouTube',
                color: Colors.red,
                onTap: () async {
                  if (youtubeLink.isNotEmpty && await canLaunchUrl(Uri.parse(youtubeLink))) {
                    await launchUrl(Uri.parse(youtubeLink));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Link उपलब्ध छैन'), backgroundColor: Colors.red),
                    );
                  }
                },
              ),
              _build3DFeatureCard(
                icon: Icons.video_call,
                title: 'Zoom',
                color: Colors.blue,
                onTap: () async {
                  if (zoomLink.isNotEmpty && await canLaunchUrl(Uri.parse(zoomLink))) {
                    await launchUrl(Uri.parse(zoomLink));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Link उपलब्ध छैन'), backgroundColor: Colors.red),
                    );
                  }
                },
              ),
              _build3DFeatureCard(
                icon: Icons.picture_as_pdf,
                title: 'PDF',
                color: Colors.green,
                onTap: () async {
                  if (pdfLink.isNotEmpty && await canLaunchUrl(Uri.parse(pdfLink))) {
                    await launchUrl(Uri.parse(pdfLink));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Link उपलब्ध छैन'), backgroundColor: Colors.red),
                    );
                  }
                },
              ),
              _build3DFeatureCard(
                icon: Icons.announcement,
                title: 'Notice',
                color: Colors.amber,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('📢 Notice', style: TextStyle(fontSize: 16)),
                      content: Text(notice.isNotEmpty ? notice : 'आजको Live Class साँझ ४ बजे'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('बन्द गर्नुहोस्'),
                        ),
                      ],
                    ),
                  );
                },
              ),
              _build3DFeatureCard(
                icon: Icons.person,
                title: 'Profile',
                color: Colors.purple,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Profile आउँदै छ'), backgroundColor: Colors.blue),
                  );
                },
              ),
              _build3DFeatureCard(
                icon: Icons.calendar_today,
                title: 'उपस्थिति',
                color: Colors.cyan,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('📊 उपस्थिति', style: TextStyle(fontSize: 16)),
                      content: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('कुल दिन: 30', style: TextStyle(fontSize: 14)),
                          Text('✅ उपस्थित: 25', style: TextStyle(fontSize: 14, color: Colors.green)),
                          Text('❌ अनुपस्थित: 5', style: TextStyle(fontSize: 14, color: Colors.red)),
                          SizedBox(height: 8),
                          Text('प्रतिशत: 83%', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue)),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('बन्द गर्नुहोस्'),
                        ),
                      ],
                    ),
                  );
                },
              ),
              _build3DFeatureCard(
                icon: Icons.bar_chart,
                title: 'प्रगति',
                color: Colors.indigo,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('📈 प्रगति', style: TextStyle(fontSize: 16)),
                      content: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('📚 बीजगणित: 70%', style: TextStyle(fontSize: 14)),
                          Text('📐 ज्यामिति: 50%', style: TextStyle(fontSize: 14)),
                          Text('🧮 अंकगणित: 85%', style: TextStyle(fontSize: 14)),
                          SizedBox(height: 8),
                          Text('औसत: 68%', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green)),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('बन्द गर्नुहोस्'),
                        ),
                      ],
                    ),
                  );
                },
              ),
              _build3DFeatureCard(
                icon: Icons.schedule,
                title: 'तालिका',
                color: Colors.orange,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('📅 आजको तालिका', style: TextStyle(fontSize: 16)),
                      content: const Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('🕐 ३:०० - गणित कक्षा', style: TextStyle(fontSize: 14)),
                          Text('🕐 ४:०० - बीजगणित', style: TextStyle(fontSize: 14)),
                          Text('🕐 ५:०० - अभ्यास', style: TextStyle(fontSize: 14)),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('बन्द गर्नुहोस्'),
                        ),
                      ],
                    ),
                  );
                },
              ),
              _build3DFeatureCard(
                icon: Icons.quiz,
                title: 'क्विज',
                color: Colors.pink,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('क्विज आउँदै छ'), backgroundColor: Colors.blue),
                  );
                },
              ),
              _build3DFeatureCard(
                icon: Icons.assignment,
                title: 'Assignment',
                color: Colors.brown,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Assignment आउँदै छ'), backgroundColor: Colors.blue),
                  );
                },
              ),
              _build3DFeatureCard(
                icon: Icons.timer,
                title: 'Mock Test',
                color: Colors.teal,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Mock Test आउँदै छ'), backgroundColor: Colors.blue),
                  );
                },
              ),
              _build3DFeatureCard(
                icon: Icons.today,
                title: 'Practice',
                color: Colors.indigo,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Practice आउँदै छ'), backgroundColor: Colors.blue),
                  );
                },
              ),
              _build3DFeatureCard(
                icon: Icons.photo_library,
                title: 'Gallery',
                color: Colors.deepPurple,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Gallery आउँदै छ'), backgroundColor: Colors.blue),
                  );
                },
              ),
              _build3DFeatureCard(
                icon: Icons.logout,
                title: 'Logout',
                color: Colors.red,
                onTap: () {
                  setState(() {
                    isAccessGranted = false;
                    _codeController.clear();
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 12),
          ElevatedButton.icon(
            onPressed: () {
              setState(() {
                isAccessGranted = false;
                _codeController.clear();
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              minimumSize: const Size(double.infinity, 42),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
            icon: const Icon(Icons.logout, color: Colors.white, size: 16),
            label: const Text('🚪 Logout', style: TextStyle(color: Colors.white, fontSize: 14)),
          ),
        ],
      ),
    );
  }

  Widget _build3DFeatureCard({
    required IconData icon,
    required String title,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color, color.withOpacity(0.7)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
            BoxShadow(
              color: Colors.white.withOpacity(0.2),
              spreadRadius: -2,
              blurRadius: 8,
              offset: const Offset(-2, -2),
            ),
          ],
          border: Border.all(
            color: Colors.white.withOpacity(0.3),
            width: 1.5,
          ),
        ),
        child: Stack(
          children: [
            // Glossy Highlight
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: 30,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white.withOpacity(0.3),
                      Colors.white.withOpacity(0.1),
                      Colors.white.withOpacity(0.0),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.2),
                        spreadRadius: 4,
                        blurRadius: 12,
                      ),
                    ],
                  ),
                  child: Icon(
                    icon,
                    size: 24,
                    color: Colors.white,
                    shadows: const [
                      Shadow(
                        blurRadius: 8,
                        color: Colors.black26,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 4,
                        color: Colors.black26,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
