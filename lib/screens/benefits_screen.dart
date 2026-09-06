import 'package:flutter/material.dart';
import '../data/membership_data.dart';

class BenefitsScreen extends StatelessWidget {
  const BenefitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F4F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF6F4F0),
        elevation: 0,
        foregroundColor: const Color(0xFF202020),
        title: const Text(
          'Member Benefits',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: benefits.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 13),
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2EBDD),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Icon(
                    Icons.workspace_premium_outlined,
                    color: Color(0xFFB18A43),
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Text(
                    benefits[index],
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF303030),
                    ),
                  ),
                ),
                const Icon(
                  Icons.check_circle_rounded,
                  size: 20,
                  color: Color(0xFFD1A958),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}