import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_image.dart';

class DeleteAccountBottomSheet extends StatefulWidget {
  const DeleteAccountBottomSheet({super.key});

  @override
  State<DeleteAccountBottomSheet> createState() =>
      _DeleteAccountBottomSheetState();
}

class _DeleteAccountBottomSheetState extends State<DeleteAccountBottomSheet> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 50,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(20),
            ),
          ),

          SizedBox(height: 20),

          CircleAvatar(
            radius: 35,
            backgroundColor: Color(0xffFFECEC),
            child: AppImage(
              image: 'delete_container.svg',
              width: 33,
              height: 29,
            ),
          ),

          SizedBox(height: 20),

          Text(
            "تأكيد حذف الحساب",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              fontFamily: 'IBMPlexSansArabic',
              color: Color(0xff000000),
            ),
          ),

          SizedBox(height: 4),

          Text(
            "سيتم حذف حسابك وجميع بياناتك بشكل نهائي ولا\n يمكن استعادتها.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff444748),
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: 'IBMPlexSansArabic',
            ),
          ),

          SizedBox(height: 16),

          Container(
            padding: EdgeInsets.all(16),
            width: 370,
            height: 50,

            decoration: BoxDecoration(
              color: Color(0xffF3F3F4),
              borderRadius: BorderRadius.circular(12),
            ),

            child: Row(
              children: [
                SizedBox(height: 18),

                Checkbox(
                  checkColor: Color(0xffFFFFFF),
                  activeColor: Color(0xff292D32),

                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),

                SizedBox(width: 2),

                Text(
                  "لقد فهمت أن هذا الإجراء نهائي.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'IBMPlexSansArabic',
                    color: Color(0xff000000),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 16),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffFF4B4B),
                minimumSize: Size.fromHeight(55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onPressed: () {},
              child: Text(
                "حذف الحساب",
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'IBMPlexSansArabic',
                ),
              ),
            ),
          ),

          SizedBox(height: 8),

          SizedBox(
            width: double.infinity,

            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffFFFFFF),
                minimumSize: Size.fromHeight(55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),

                  side: BorderSide(
                    color: Color(0xff000000),
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "إلغاء",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'IBMPlexSansArabic',
                ),
              ),
            ),
          ),

          SizedBox(height: 20),
        ],
      ),
    );
  }
}
