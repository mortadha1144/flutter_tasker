import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasker/core/utils/widgets/custom_loading_indicator.dart';
import 'package:flutter_tasker/features/home/presentation/providers/home_provider.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_router.dart';
import 'custome_slidable.dart';
import 'home_view_header.dart';
import 'home_view_list_view_item.dart';

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
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: CustomSlidable(
                    key: Key(tasks[index].id.toString()),
                    child: HomeViewListViewItem(
                      task: tasks[index],
                      onTap: () {
                        context.push(AppRouter.kTaskView,
                            extra: tasks[index].id);
                      },
                      onTapCheckBox: (newValue) {
                        ref
                            .read(homeProvider.notifier)
                            .updateIsCompleted(index, newValue ?? false);
                      },
                    ),
                    onDismissed: () {
                      ref
                          .read(homeProvider.notifier)
                          .deleteTask(tasks[index].id!);
                    },
                    onPressed: (context) {
                      ref
                          .read(homeProvider.notifier)
                          .deleteTask(tasks[index].id!);
                    },
                  ),
                ),
              ),
              error: (error) => Text(error),
              orElse: () => const Padding(
                padding: EdgeInsets.only(top: 150),
                child: CustomLoadingIndicator(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
