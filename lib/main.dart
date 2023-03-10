import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:professional_id_card/constants/list.dart';
import 'package:professional_id_card/constants/theme.dart';
import 'package:professional_id_card/translations/codegen_loader.g.dart';
import './translations/locale_keys.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('fa')],
      startLocale: const Locale('en'),
      path: "assets/translations",
      assetLoader: const CodegenLoader(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode themeMode = ThemeMode.dark;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: themeMode == ThemeMode.dark
          ? ThemeConfig.dark().getTheme()
          : ThemeConfig.light().getTheme(),
      home: MyHomePage(
        toggleTheme: () {
          setState(() {
            if (themeMode == ThemeMode.dark) {
              themeMode = ThemeMode.light;
            } else {
              themeMode = ThemeMode.dark;
            }
          });
        },
        toggleLang: () {
          setState(() {
            print('object');
          });
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.toggleTheme,
    required this.toggleLang,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  final Function() toggleTheme;
  final Function() toggleLang;
}

class _MyHomePageState extends State<MyHomePage> {
  bool isCollapsed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.app_name.tr()),
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                if (context.locale != const Locale('fa')) {
                  context.setLocale(const Locale('fa'));
                } else {
                  context.setLocale(const Locale('en'));
                }
              });
            },
            child: const Icon(Icons.language),
          ),
          const SizedBox(width: 10),
          GestureDetector(
            onTap: widget.toggleTheme,
            child: const Icon(Icons.bubble_chart_outlined),
          ),
          const SizedBox(width: 20),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/profile_image.png',
                      width: 60,
                      height: 60,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        LocaleKeys.user_name.tr(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        LocaleKeys.user_occupation.tr(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            color: Colors.blueAccent,
                            size: 17,
                          ),
                          Text(
                            LocaleKeys.city.tr(),
                            style: const TextStyle(fontSize: 12),
                          ),
                          Text(
                            ", ${LocaleKeys.country.tr()}",
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.favorite_border_rounded,
                    color: Colors.red,
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Text(
                LocaleKeys.description.tr(),
                style: const TextStyle(fontSize: 13),
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(),
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                setState(() {
                  isCollapsed = !isCollapsed;
                });
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
                child: Row(
                  children: [
                    Text(LocaleKeys.skills.tr()),
                    !isCollapsed
                        ? const Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 18,
                          )
                        : isCollapsed && context.locale == const Locale('fa')
                            ? const Icon(
                                Icons.arrow_back_ios_new_rounded,
                                size: 18,
                              )
                            : const Icon(
                                Icons.keyboard_arrow_right_rounded,
                                size: 18,
                              ),
                  ],
                ),
              ),
            ),
            !isCollapsed
                ? Wrap(
                    spacing: 7,
                    runSpacing: 10,
                    direction: Axis.horizontal,
                    children: [
                      ...List.generate(
                        skillsList.length,
                        (index) => SkillWidget(
                          color: skillsList[index]['color'],
                          image: skillsList[index]['image'],
                          isSelected: skillsList[index]['isSelected'],
                          title: skillsList[index]['title'],
                          onTap: () {
                            //...
                            setState(() {
                              skillsList[index]['isSelected'] =
                                  !skillsList[index]['isSelected'];
                            });
                          },
                        ),
                      )
                    ],
                  )
                : const SizedBox(),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    LocaleKeys.personal_information.tr(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.alternate_email_rounded,
                          color: Colors.grey,
                          size: 20,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        hintText: LocaleKeys.email.tr(),
                        hintStyle: const TextStyle(fontSize: 14),
                      ),
                      cursorColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.grey,
                          size: 20,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        hintText: LocaleKeys.password.tr(),
                        hintStyle: const TextStyle(fontSize: 14),
                      ),
                      cursorColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        //...
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.pink[400],
                        ),
                      ),
                      child: Text('Save'),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SkillWidget extends StatelessWidget {
  const SkillWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.color,
    required this.onTap,
    required this.isSelected,
  }) : super(key: key);
  final String image;
  final String title;
  final Color color;
  final Function() onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: onTap,
      child: Container(
        width: 120,
        height: 120,
        decoration: isSelected
            ? BoxDecoration(
                color: const Color(0x0dffffff),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: color.withOpacity(0.4),
                    offset: const Offset(0, 1),
                    blurRadius: 40,
                  ),
                ],
              )
            : const BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: isSelected
                  ? BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: color,
                          offset: const Offset(0, 1),
                          blurRadius: 20,
                        ),
                      ],
                    )
                  : const BoxDecoration(),
              child: Image.asset(
                image,
                width: 40,
              ),
            ),
            const SizedBox(height: 8),
            Text(title),
          ],
        ),
      ),
    );
  }
}
