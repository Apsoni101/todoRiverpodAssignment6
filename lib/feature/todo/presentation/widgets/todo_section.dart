import 'package:assignment6/core/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoSection extends ConsumerWidget {
  final String title;
  final Widget? actionButton;
  final Widget content;

  const TodoSection({
    required this.title,
     this.actionButton,
    required this.content,
    super.key,
  });

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: AppTextStyles.displaySmall),
            if (actionButton != null) actionButton!,
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0.0),
          child: content,
        )
      ],
    );
  }
}
