import 'package:flutter/material.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:tmlearn/pages/dictionary_info_page.dart';
import 'package:tmlearn/widgets/custom_transparent_app_bar.dart';
import 'package:tmlearn/widgets/navigation_drawer.dart';

class DictionaryPage extends StatelessWidget {
  const DictionaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const CustomTransparentAppBar(titleRus: 'Словарь\n', titleTurk: 'Sözlük',),
      endDrawer: const NavigationDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17) +
            const EdgeInsets.only(top: 20, bottom: 32),
        child: Column(
          children: [
            Container(
              height: 44,
              padding: const EdgeInsets.only(left: 25, right: 8) +
                  const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(11.4)),
              child: Row(children: [
                Expanded(child: TextFormField()),
                const SizedBox(width: 30),
                FloatingActionButton(
                  backgroundColor: Colors.black,
                  onPressed: () {},
                  child: Icon(
                    Icons.search,
                    color: primaryColor,
                  ),
                )
              ]),
            ),
            const SizedBox(height: 21),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 7),
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(11.4)),
                child: ListView.separated(
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(left: 31),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const DictionaryInfoPage();
                                }));
                              },
                              child: const Text(
                                "School",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                    separatorBuilder: (contex, index) => const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 17),
                        child: Divider(
                          color: Colors.black,
                        )),
                    itemCount: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
