import 'package:flutter/material.dart';
import '../models/membership_model.dart';

class MembershipCardWidget extends StatelessWidget {
  final MembershipModel member;

  const MembershipCardWidget({
    super.key,
    required this.member,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 215,
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(27),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF292929),
            Color(0xFF111111),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.18),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            right: -25,
            top: -35,
            child: Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFFD7B56D)
                      .withValues(alpha: 0.15),
                  width: 25,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 39,
                    height: 39,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD7B56D),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.workspace_premium_rounded,
                      color: Color(0xFF191919),
                      size: 23,
                    ),
                  ),
                  const SizedBox(width: 11),
                  const Text(
                    'ELITE CLUB',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 2,
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.contactless_rounded,
                    color: Color(0xFFD7B56D),
                    size: 27,
                  ),
                ],
              ),
              const Spacer(),
              Text(
                member.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                member.memberId,
                style: const TextStyle(
                  color: Color(0xFFB8B8B8),
                  fontSize: 10,
                  letterSpacing: 1.4,
                ),
              ),
              const SizedBox(height: 13),
              Row(
                children: [
                  Text(
                    member.tier,
                    style: const TextStyle(
                      color: Color(0xFFD7B56D),
                      fontSize: 10,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.5,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'VALID • ${member.validUntil}',
                    style: const TextStyle(
                      color: Color(0xFF9D9D9D),
                      fontSize: 8,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}