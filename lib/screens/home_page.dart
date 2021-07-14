import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/components/constants.dart';
import 'package:resume/widgets/cardForIcon.dart';
import 'package:resume/components/hero_dialog_route.dart';
import 'package:resume/widgets/image_container.dart';
import 'PopUpCards/about_card.dart';
import 'PopUpCards/contact_card.dart';
import 'PopUpCards/education_card.dart';
import 'PopUpCards/experience_card.dart';
import 'PopUpCards/project_Card.dart';
import 'PopUpCards/skills_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SizedBox(
                height: 20,
              ),
            ),
            Expanded(
              // flex: 2,
              child: Text(
                'Hi I Am Ajith Victor',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: ImageContainer(),
            ),
            Expanded(
              child: Text(
                'Ajith Vitor',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CardForIcon(
                    icon: Icons.perm_identity,
                    text: 'About',
                    onTap: () {
                      Navigator.of(context).push(
                        HeroDialogRoute(builder: (context) {
                          return AboutCard();
                        }),
                      );
                      print('About pressed');
                    },
                  ),
                  CardForIcon(
                    text: 'Education',
                    icon: Icons.school_outlined,
                    onTap: () {
                      Navigator.of(context)
                          .push(HeroDialogRoute(builder: (context) {
                        return EducationCard();
                      }));
                      print('Education pressed');
                    },
                  ),
                  CardForIcon(
                    icon: Icons.precision_manufacturing_outlined,
                    text: 'Skills',
                    onTap: () {
                      Navigator.push(
                        context,
                        HeroDialogRoute(builder: (context) {
                          return SkillsCard();
                        }),
                      );
                      print('Skills pressed');
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CardForIcon(
                    icon: Icons.work_outline,
                    onTap: () {
                      Navigator.push(
                        context,
                        HeroDialogRoute(builder: (context) {
                          return ExperienceCard();
                        }),
                      );
                      print('Experience pressed');
                    },
                    text: 'Experience',
                  ),
                  CardForIcon(
                    icon: Icons.emoji_objects_outlined,
                    text: 'Projects',
                    onTap: () {
                      Navigator.push(
                        context,
                        HeroDialogRoute(builder: (context) {
                          return ProjectCard();
                        }),
                      );
                      print('Projects pressed');
                    },
                  ),
                  CardForIcon(
                      text: 'Contact',
                      icon: Icons.mail_outline,
                      onTap: () {
                        Navigator.push(
                          context,
                          HeroDialogRoute(builder: (context) {
                            return ContactCard();
                          }),
                        );
                        print('Contact pressed');
                      }),
                ],
              ),
            ),
            kSpaceTenPixel,
          ],
        ),
      ),
    );
  }
}
