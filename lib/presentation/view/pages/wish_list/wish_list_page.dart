import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m3_app/core/theme/m3_theme_config.dart';
import 'package:m3_app/domain/model/circle_wish_model.dart';
import 'package:m3_app/presentation/view/components/common/error_page.dart';
import 'package:m3_app/presentation/view/components/common/loading_page.dart';

import '../../../controller/wish_list/wish_list_controller.dart';

class WishListPage extends ConsumerWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wishListController = ref.watch(wishListControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('ウィッシュリスト'),
      ),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal, // 横スクロール
          child: Column(
            children: [
              _HeaderCell(),
              wishListController.when(
                data: (data) {
                  return Column(
                    children: data.map((wish) {
                      return _DataCellRow(
                        wish: wish,
                      );
                    }).toList(),
                  );
                },
                loading: () => const LoadingPage(),
                error: (error, stack) => ErrorPage(
                  retryMethod: () {
                    ref.invalidate(wishListControllerProvider);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HeaderCell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromARGB(255, 184, 184, 184), // ボーダーの色
          ),
        ),
      ),
      child: Row(
        children: [
          _DataCell(
            width: 45,
            child: Text(
              '行くかも',
              style: TextStyle(fontSize: M3ThemeConfig.fontSize.small),
            ),
          ),
          const _DataCell(width: 45, child: Text('済')),
          const _DataCell(width: 80, child: Text('場所')),
          const _DataCell(width: 120, child: Text('サークル名')),
          const _DataCell(width: 100, child: Text('予定金額')),
          const _DataCell(width: 200, child: Text('メモ')),
        ],
      ),
    );
  }
}

class _DataCellRow extends ConsumerWidget {
  const _DataCellRow({required this.wish});
  final CircleWishModel wish;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(wishListControllerProvider.notifier);

    return DecoratedBox(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromARGB(255, 184, 184, 184), // ボーダーの色
          ),
        ),
        // color: Colors.amber,
      ),
      child: Row(
        children: [
          _DataCell(
            width: 45,
            child: _WishCheckBox(
              value: wish.isFavorite,
              onChanged: (value) async {
                await notifier.updateWishList(
                  wish.copyWith(isFavorite: !wish.isFavorite),
                );
              },
            ),
          ),
          _DataCell(
            width: 45,
            child: _WishCheckBox(
              value: wish.isDone,
              onChanged: (value) async {
                await notifier.updateWishList(
                  wish.copyWith(isDone: !wish.isDone),
                );
              },
            ),
          ),
          _DataCell(width: 80, child: Text(wish.spaceName)),
          _DataCell(width: 120, child: Text(wish.name)),
          _DataCell(
            width: 100,
            child: _WishAmountTextEditingArea(
              amount: wish.amount,
              onTapOutside: (value) async {
                await notifier.updateWishList(
                  wish.copyWith(amount: int.parse(value)),
                );
              },
            ),
          ),
          _DataCell(
            width: 200,
            child: _WishMemoTextEditingArea(
              memo: wish.memo,
              onTapOutside: (value) {
                notifier.updateWishList(wish.copyWith(memo: value));
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _DataCell extends StatelessWidget {
  const _DataCell({this.width, required this.child});
  final double? width;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 3),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Center(child: child),
    );
  }
}

class _WishCheckBox extends StatelessWidget {
  const _WishCheckBox({required this.value, required this.onChanged});
  final bool value;
  // ignore: avoid_positional_boolean_parameters
  final void Function(bool? value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: value,
      onChanged: onChanged,
    );
  }
}

class _WishAmountTextEditingArea extends HookWidget {
  const _WishAmountTextEditingArea({
    required this.amount,
    required this.onTapOutside,
  });
  final int amount;
  final ValueChanged<String> onTapOutside;
  @override
  Widget build(BuildContext context) {
    final textEditingController =
        useTextEditingController(text: amount.toString());
    final focusNode = useFocusNode();
    focusNode.addListener(() {
      if (!focusNode.hasFocus) {
        onTapOutside(textEditingController.text);
      }
    });
    return TextField(
      controller: textEditingController,
      focusNode: focusNode,
      decoration: const InputDecoration(
        border: InputBorder.none,
        suffixText: '円',
      ),
      textAlign: TextAlign.end,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      onTapOutside: (event) {
        focusNode.unfocus();
      },
    );
  }
}

class _WishMemoTextEditingArea extends HookWidget {
  const _WishMemoTextEditingArea({
    required this.memo,
    required this.onTapOutside,
  });
  final String memo;
  final ValueChanged<String> onTapOutside;
  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController(text: memo);
    final focusNode = useFocusNode();

    focusNode.addListener(() {
      if (!focusNode.hasFocus) {
        onTapOutside(textEditingController.text);
      }
    });
    return TextField(
      controller: textEditingController,
      focusNode: focusNode,
      decoration: const InputDecoration(
        border: InputBorder.none,
      ),
      maxLines: null,
      onTapOutside: (event) {
        focusNode.unfocus();
      },
    );
  }
}
