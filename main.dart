import 'package:flutter/material.dart';
import 'widgets/anime_card.dart';
import 'screens/anime_detail.dart';

void main() {
  runApp(const AnimeApp());
}

class AnimeApp extends StatelessWidget {
  const AnimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ============================
      // 🔥 AppBar KEREN (OPSI 4)
      // ============================
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(242, 2, 82, 255),
        elevation: 0,
        title: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 142, 27, 219).withOpacity(0.15),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white24),
          ),
          child: const Text(
            "AnimeWatch",
            style: TextStyle(
              color: Color.fromARGB(255, 48, 9, 9),
              fontSize: 22,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ),
      ),

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 66, 1, 112),
              Color.fromARGB(255, 146, 29, 255),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // =======================
            // BAGIAN KIRI / CONTENT
            // =======================
            Expanded(
              flex: 3,
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  const Text(
                    "Anime Populer",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),

                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        AnimeCard(
                          imagePath: 'assets/images/demonslayer.jpg',
                          title: 'Demon Slayer',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => AnimeDetail(
                                  title: 'Demon Slayer',
                                  imagePath: 'assets/images/demonslayer.jpg',
                                  description:
                                      'Tanjiro menjadi pemburu iblis untuk menyelamatkan adiknya, Nezuko, yang berubah menjadi iblis.',
                                  episodes: [
                                    "Cruelty",
                                    "Trainer Sakonji Urokodaki",
                                    "Sabito and Makomo",
                                    "Final Selection",
                                    "Nichirin Sword",
                                  ],
                                ),
                              ),
                            );
                          },
                        ),

                        AnimeCard(
                          imagePath: 'assets/images/jujutsu.jpg',
                          title: 'Jujutsu Kaisen',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => AnimeDetail(
                                  title: 'Jujutsu Kaisen',
                                  imagePath: 'assets/images/jujutsu.jpg',
                                  description:
                                      'Yuji Itadori menjadi penyihir jujutsu setelah menelan jari Ryomen Sukuna.',
                                  episodes: [
                                    "Ryomen Sukuna",
                                    "For Myself",
                                    "Girl of Steel",
                                    "Curse Womb Must Die",
                                    "The Origin of Obedience",
                                  ],
                                ),
                              ),
                            );
                          },
                        ),

                        AnimeCard(
                          imagePath: 'assets/images/naruto.jpg',
                          title: 'Naruto',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => AnimeDetail(
                                  title: 'Naruto',
                                  imagePath: 'assets/images/naruto.jpg',
                                  description:
                                      'Perjalanan Naruto Uzumaki mengejar mimpinya menjadi Hokage.',
                                  episodes: [
                                    "Enter: Naruto Uzumaki!",
                                    "My Name is Konohamaru!",
                                    "Sasuke and Sakura: Friends or Foes?",
                                    "Pass or Fail: Survival Test",
                                    "You Failed! Kakashi’s Final Decision",
                                  ],
                                ),
                              ),
                            );
                          },
                        ),

                        AnimeCard(
                          imagePath: 'assets/images/aot.jpg',
                          title: 'Attack on Titan',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => AnimeDetail(
                                  title: 'Attack on Titan',
                                  imagePath: 'assets/images/aot.jpg',
                                  description:
                                      'Umat manusia bertahan hidup di balik dinding raksasa demi melawan para Titan.',
                                  episodes: [
                                    "To You, 2000 Years From Now",
                                    "That Day",
                                    "A Dim Light Amid Despair",
                                    "The Night of the Closing Ceremony",
                                    "First Battle",
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  const Text(
                    "Rekomendasi Lainnya",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),

                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        AnimeCard(
                          imagePath: 'assets/images/bleach.jpg',
                          title: 'Bleach',
                          onTap: () {},
                        ),
                        AnimeCard(
                          imagePath: 'assets/images/haikyuu.jpg',
                          title: 'Haikyuu!!',
                          onTap: () {},
                        ),
                        AnimeCard(
                          imagePath: 'assets/images/onepiece.jpg',
                          title: 'One Piece',
                          onTap: () {},
                        ),
                        AnimeCard(
                          imagePath: 'assets/images/bluelock.jpg',
                          title: 'Blue Lock',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // =======================
            // PANEL KANAN
            // =======================
            Container(
              width: 260,
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Cari Anime",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),

                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.9),
                      hintText: "Search...",
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  const Text(
                    "Menu",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 14),

                  menuBox("List Anime"),
                  menuBox("Genre Anime"),
                  menuBox("Top Trending"),
                  menuBox("Rilis Terbaru"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget menuBox(String title) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white24),
      ),
      child: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
