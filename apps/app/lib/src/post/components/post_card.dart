import 'package:cores_designsystem/widgets.dart';
import 'package:cores_domain/post.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return FilledCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_Header(post: post), const Gap(32), _Body(post: post)],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('回答済'),
        Row(children: [Text('21件')]),
      ],
    );
  }
}

class _HeaderStatus extends StatelessWidget {
  const _HeaderStatus({required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    // TODO(yakitama5): 回答状況を取得できるEntityにする
    return const Row(children: [Icon(Icons.check_circle_outline), Text('回答済')]);
  }
}

class _Body extends StatelessWidget {
  const _Body({required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Text(post.title);
  }
}
