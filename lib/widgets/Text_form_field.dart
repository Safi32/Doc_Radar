// import 'package:doc_radar/utils/colors.dart';
// import 'package:flutter/material.dart';

// class CustomTextFormField extends StatelessWidget {
//   const CustomTextFormField(
//       {super.key, required this.hintText, required this.imageUrl});

//   final String hintText;
//   final String imageUrl;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(
//         horizontal: 20,
//       ),
//       child: TextFormField(
//         decoration: InputDecoration(
//           hintText: hintText,
//           hintStyle: const TextStyle(
//             color: Colors.grey,
//           ),
//           prefixIcon: Padding(
//             padding: const EdgeInsets.symmetric(
//               horizontal: 10,
//             ),
//             child: Image(
//               image: AssetImage(
//                 imageUrl,
//               ),
//             ),
//           ),
//           fillColor: Colors.grey.shade200,
//           filled: true,
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//             borderSide: const BorderSide(
//               color: Colors.grey,
//             ),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//             borderSide: const BorderSide(
//               color: Colors.grey,
//             ),
//           ),
//           errorBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//             borderSide: const BorderSide(
//               color: AppColors.red,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:doc_radar/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.imageUrl,
      this.isPassword = false});

  final String hintText;
  final String imageUrl;
  final bool isPassword; // Flag to indicate if the field is a password field

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _isPasswordVisible =
      false; // This will control the visibility of the password

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: TextFormField(
        obscureText: widget.isPassword
            ? !_isPasswordVisible
            : false, // Toggle password visibility
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Image(
              image: AssetImage(
                widget.imageUrl,
              ),
            ),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColors.red,
            ),
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}
