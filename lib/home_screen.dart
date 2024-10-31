import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: null,
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            Text(
              'IoT-Based Web Application for Crop Monitoring and Yield Prediction using Daubechies Wavelet and Neural Networks',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          foreground: Paint()
            ..shader = const LinearGradient(
              colors: <Color>[
                Color(0xFF001F3F), // Navy blue
                Color(0xFF003F3F), // Navy green
              ],
            ).createShader(const Rect.fromLTWH(0, 0, 200, 70)),
        ),
        selectionColor: const Color.fromARGB(255, 3, 134, 14),
        textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            const Text(
              'An advanced IoT-driven application leveraging AI and ML for crop monitoring in vertical farms.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),

            // Features Section
            const SectionTitle(title: 'Features'),
            const SizedBox(height: 12),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                FeatureCard(
                  title: 'Project Background',
                  imageUrl:
                      'https://modernfarmer.com/wp-content/uploads/2018/07/aeroponics-768x512.jpg',
                  description:
                      'An overview of challenges in agriculture and the importance of vertical farming to meet rising food demand.',
                ),
                FeatureCard(
                  title: 'Vertical Farming & Aeroponics',
                  imageUrl:
                      'https://kj1bcdn.b-cdn.net/media/40852/vertical-4.png',
                  description:
                      'Using stacked layers and aeroponics to maximize crop yield, reduce resource usage, and support urban farming.',
                ),
                FeatureCard(
                  title: 'Tech Advancements in Aeroponics',
                  imageUrl: 'https://wallpaperaccess.com/full/1426962.jpg',
                  description:
                      'Machine learning and AI enhance real-time growth monitoring, enabling predictive modeling with data like pH and temperature.',
                ),
                FeatureCard(
                  title: 'Wavelet Transform',
                  imageUrl:
                      'https://www.researchgate.net/profile/Ramachandran_K_I2/publication/220218205/figure/fig4/AS:568882848952320@1512643648146/a-Daubechies-wavelet-functions-of-db1-db15.png',
                  description:
                      'Daubechies wavelet transforms outperform existing methods in predicting crop yield by offering better noise reduction and multi-resolution analysis, which improves the quality of sensor data readings.',
                ),
                FeatureCard(
                  title: 'Neural Networks',
                  imageUrl:
                      'https://th.bing.com/th/id/OIP.BvDsl3vUV0nCcCn1eFzphQHaFy?rs=1&pid=ImgDetMain',
                  description:
                      'Combining Daubechies wavelets and LSTM models for accurate crop growth predictions in vertical farms.',
                ),
                FeatureCard(
                  title: 'Internet of Things',
                  imageUrl: 'https://gecdesigns.com/img/blog/iot/iot-02.jpg',
                  description:
                      'The desired output of this system is the prediction of lettuce crop yield with sensor monitoring in a web application.',
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Project Objectives Section
            const SizedBox(height: 10), // Added spacing
            const SectionTitle(title: 'Project Objectives'),
            const SizedBox(height: 12),
            const Column(
              children: [
                TechCard(
                  icon: Icons.sensors,
                  title: 'Wireless Sensor Network',
                  description:
                      'Creating a real-time monitoring network using ESP32 for environmental data tracking.',
                ),
                TechCard(
                  icon: Icons.water,
                  title: 'Automated Irrigation Control',
                  description:
                      'Implementing a smart spray system to control water usage and optimize irrigation.',
                ),
                TechCard(
                  icon: Icons.web,
                  title: 'Web App Development',
                  description:
                      'Developing a web-based interface using Flask, React, and SQLite for data visualization and control.',
                ),
                TechCard(
                  icon: Icons.access_time_rounded,
                  title: 'Data Processing & Prediction',
                  description:
                      'Developing a web-based interface using Flask, ReactUsing Daubechies wavelets for sensor data processing and crop yield predictions.',
                ),
                TechCard(
                  icon: Icons.nat_rounded,
                  title: 'Advanced Neural Network Models',
                  description:
                      'Building LSTM and XGBoost models for yield prediction in vertical farms.',
                ),
               TechCard(
                  icon: Icons.stacked_line_chart_rounded,
                  title: 'Metrics and ISO/IEC 25010',
                  description:
                      'Evaluate using ML Metrics, Functionality, Reliability and Portability..',
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Challenges Section
            const SectionTitle(title: 'Challenges in Vertical Farming'),
            const SizedBox(height: 15),
            const Text(
              'Despite the potential of vertical farming, it faces challenges such as high setup costs, energy demands for lighting and climate control, and technological requirements for efficient monitoring. Effective implementation requires robust systems for real-time data collection and automated control to manage resources sustainably.',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            const SizedBox(height: 15),
            const Text(
              'Our project addresses these challenges by integrating IoT, AI, and ML to create an intelligent ecosystem that automates crop monitoring and yield prediction.',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            const SizedBox(height: 24),

            // Advantages Section
            const SectionTitle(
                title: 'Advantages of IoT-Based Vertical Farming'),
            const SizedBox(height: 12),
            const AdvantagesList(),
            const SizedBox(height: 24),

            // Technologies Used Section
            const SectionTitle(title: 'Technologies Used'),
            const SizedBox(height: 12),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                TechCard(
                    icon: Icons.memory,
                    title: 'ESP32 MCU',
                    description:
                        'Used for data collection from sensors and wireless communication.'),
                TechCard(
                    icon: Icons.web,
                    title: 'Flask & React',
                    description:
                        'Flask for backend API, React for a responsive and interactive frontend.'),
                TechCard(
                    icon: Icons.data_object,
                    title: 'SQLite Database',
                    description:
                        'A lightweight, embedded database for data storage and retrieval.'
                    ),
                TechCard(
                    icon: Icons.network_locked,
                    title: 'TensorFlow & Python',
                    description:
                        'Used for implementing neural networks and machine learning models.'
                    ),
                      TechCard(
                    icon: Icons.network_locked,
                    title: 'Daubechies Wavelet',
                    description:
                        'Transforms sensor data for noise reduction and feature extraction.'
                    ),
                       TechCard(
                    icon: Icons.network_locked,
                    title: 'PyWavelet',
                    description:
                        'PyWavelets is open source wavelet transform software for Python.'
                    ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Reusable Widget for Section Titles
class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
    );
  }
}

// Reusable Feature Card Widget
class FeatureCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;

  const FeatureCard({
    required this.title,
    required this.imageUrl,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text(title),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.network(imageUrl),
                      const SizedBox(height: 12),
                      Text(description,
                          style: const TextStyle(color: Colors.grey)),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Close'),
                    ),
                  ],
                );
              },
            );
          },
          child: Container(
            padding: const EdgeInsets.all(4), // Padding to avoid minor overflow
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(8)),
                    child: Image.network(
                      imageUrl,
                      height: 100,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(
                        5), // Reduced padding to prevent overflow
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        title,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

// Reusable Tech Card Widget
class TechCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const TechCard({
    required this.icon,
    required this.title,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 200,
        maxWidth: 300, // Adjust max width based on your layout
      ),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start, // Ensures correct alignment
            children: [
              Icon(icon, color: Colors.green, size: 32),
              const SizedBox(width: 12),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      description,
                      style: const TextStyle(color: Colors.grey, fontSize: 14),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Advantages List Widget
class AdvantagesList extends StatelessWidget {
  const AdvantagesList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('• Increases crop yield with optimized space and resources.',
            style: TextStyle(fontSize: 16, color: Colors.grey)),
        SizedBox(height: 8),
        Text(
            '• Enables year-round production independent of climate conditions.',
            style: TextStyle(fontSize: 16, color: Colors.grey)),
        Text(
            '• Minimizes water and nutrient use with precise monitoring and control.',
            style: TextStyle(fontSize: 16, color: Colors.grey)),
        Text(
            '• Reduces labor needs through automated systems for irrigation and lighting',
            style: TextStyle(fontSize: 16, color: Colors.grey)),
        Text(
            '• Enhances food security and quality control by reducing dependence on imports.',
            style: TextStyle(fontSize: 16, color: Colors.grey)),
      ],
    );
  }
}
