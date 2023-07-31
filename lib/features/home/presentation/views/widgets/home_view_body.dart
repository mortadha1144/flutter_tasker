import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasker/core/utils/app_router.dart';
import 'package:flutter_tasker/core/utils/widgets/custom_loading_indicator.dart';
import 'package:flutter_tasker/features/home/presentation/providers/home_provider.dart';
import 'package:flutter_tasker/features/home/presentation/views/widgets/home_view_list_view_item.dart';
import 'package:go_router/go_router.dart';

import 'home_view_header.dart';

class HomeViewBody extends ConsumerWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeProvider);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const HomeViewHeader(),
            const SizedBox(height: 20),
            state.maybeWhen(
              loaded: (tasks) => ListView.builder(
                itemCount: tasks.length,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => HomeViewListViewItem(
                  task: tasks[index],
                  onTap: () {
                    context.push(AppRouter.kTaskView,extra: tasks[index]);
                  },
                ),
              ),
              error: (error) => Text(error),
              orElse: () => const CustomLoadingIndicator(),
            )
          ],
        ),
      ),
    );
  }
}
