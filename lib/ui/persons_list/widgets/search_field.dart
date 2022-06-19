import 'package:flutter/material.dart';
import 'package:my_app/constants/app_colors.dart';
import 'package:my_app/constants/app_styles.dart';
import 'package:my_app/generated/l10n.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: AppStyles.s16w400,
              cursorColor: AppColors.mainText,
              decoration: InputDecoration(
                hintText: S.of(context).findPerson,
                hintStyle: AppStyles.s16w400.copyWith(
                  color: AppColors.neutral2,
                ),
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 14.0,
                  horizontal: 18.0,
                ),
                filled: true,
                fillColor: AppColors.neutral1,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(36.0),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  size: 26.0,
                  color: AppColors.neutral2,
                ),
                suffixIcon: const Icon(
                  Icons.filter_list_alt,
                  size: 26.0,
                  color: AppColors.neutral2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

