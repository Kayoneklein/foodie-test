part of '../index.dart';

class _AppBarActionIcon extends StatelessWidget {
  final String icon;
  const _AppBarActionIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Image.asset(
        icon,
        width: 23,
      ),
    );
  }
}
