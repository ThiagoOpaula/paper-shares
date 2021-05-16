import 'package:flutter/material.dart';
import 'package:paper_shares/core/core.dart';
import 'package:paper_shares/shared/input/input_widget.dart';

import 'widgets/altcoin_box_widget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String searchText;

  void updateSearch(String newsearchText) {
    setState(() {
      searchText = newsearchText;
      print(searchText);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: SafeArea(
          child: Image.asset(
            AppImages.icon,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 32),
        child: Column(
          children: [
            InputWidget(
              onSonChanged: (String searchText) {
                updateSearch(searchText);
              },
              hideText: false,
              label: 'search',
              placeholder: 'pesquise alguma altcoin',
            ),
            const SizedBox(height: 24),
            Container(
              height: 500,
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: const [
                  AltcoinBox(),
                  Divider(),
                  AltcoinBox(),
                  Divider(),
                  AltcoinBox(),
                  Divider(),
                  AltcoinBox(),
                  Divider(),
                  AltcoinBox(),
                  Divider(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
