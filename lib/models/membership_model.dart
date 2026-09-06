class MembershipModel {
  final String name;
  final String memberId;
  final String tier;
  final int points;
  final int nextTierPoints;
  final String validUntil;

  const MembershipModel({
    required this.name,
    required this.memberId,
    required this.tier,
    required this.points,
    required this.nextTierPoints,
    required this.validUntil,
  });
}