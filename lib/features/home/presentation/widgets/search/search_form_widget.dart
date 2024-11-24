import 'package:doctor_appointment/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class SearchFormWidget extends StatelessWidget {
  const SearchFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppTextFormField(
            hintText: 'Search',
            textInputType: TextInputType.text,
            backGroundColorHint: const Color(0xFFF2F4F7),
            prefixIcon: const Icon(Icons.search_outlined, size: 30),
            validator: (p0) {},
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.filter_list_outlined, size: 40),
        ),
      ],
    );
  }
}
