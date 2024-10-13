import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsTab extends StatefulWidget {
  SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  String? selectedTheme = 'Light';
  String? selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Theme',
            style: Theme.of(context).textTheme.labelSmall,
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            width: double.infinity,
            height: 48,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Theme.of(context).dividerColor, width: 2)),
            child: Row(
              children: [
                Text(
                  selectedTheme ?? '',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).primaryColor),
                ),
                const Spacer(),
                DropdownButton<String>(
                  iconDisabledColor: Colors.transparent,
                  iconEnabledColor: Colors.black,
                  isDense: false,
                  autofocus: false,
                  enableFeedback: false,
                  focusColor: Colors.transparent,
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  elevation: 0,
                  padding: const EdgeInsets.all(0),
                  isExpanded: false,
                  items: <String>['Light', 'Dark'].map((String value) {
                    selectedTheme = value;
                    return DropdownMenuItem<String>(
                      value: selectedTheme,
                      child: Text(selectedTheme ?? ''),
                    );
                  }).toList(),
                  onChanged: (newTheme) {
                    selectedTheme = newTheme;
                    setState(() {});
                  },
                )
              ],
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            'Language',
            style: Theme.of(context).textTheme.labelSmall,
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            width: double.infinity,
            height: 48,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Theme.of(context).dividerColor, width: 2)),
            child: Row(
              children: [
                Text(
                  selectedLanguage ?? '',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).primaryColor),
                ),
                const Spacer(),
                DropdownButton<String>(
                  iconDisabledColor: Colors.transparent,
                  iconEnabledColor: Colors.black,
                  isDense: false,
                  autofocus: false,
                  enableFeedback: false,
                  focusColor: Colors.transparent,
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  elevation: 0,
                  padding: EdgeInsets.all(0),
                  isExpanded: false,
                  items: <String>['English', 'Arabic'].map((String value) {
                    selectedLanguage = value;
                    return DropdownMenuItem<String>(
                      value: selectedLanguage,
                      child: Text(selectedLanguage ?? ''),
                    );
                  }).toList(),
                  onChanged: (newLang) {
                    selectedLanguage = newLang;
                    setState(() {});
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
