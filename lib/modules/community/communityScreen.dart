import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CommunityScreen extends StatefulWidget {
  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  String _result = '';
  List<QuestionAnswer> allQuestions = [
    QuestionAnswer(
      question: 'How often should I schedule routine check-ups?',
      answer:
          'Maintaining good overall health involves a balanced diet, regular exercise, adequate sleep, and stress management. Scheduling routine check-ups allows us to monitor your health and address any concerns early on.',
      doctorName: 'Dr. John Doe',
      doctorPhoto: 'images/doctor1.jpg',
    ),
    QuestionAnswer(
      question: 'How is this condition typically treated?',
      answer:
          'We will need to conduct a thorough examination and possibly some tests to determine the cause of your symptoms. Potential diagnoses will depend on the findings.',
      doctorName: 'Dr. Jane Smith',
      doctorPhoto: 'images/doctor2.jpg',
    ),
    QuestionAnswer(
      question:
          'Are there potential side effects of the prescribed medication?',
      answer:
          'This medication is prescribed to address [specific condition]. Common side effects include [list of potential side effects]. It\'s crucial to inform me of any over-the-counter medications you\'re taking to avoid potential interactions.',
      doctorName: 'Dr. John Doe',
      doctorPhoto: 'images/doctor3.jpg',
    ),
    QuestionAnswer(
      question:
          'What are the potential risks and benefits of the recommended tests?',
      answer:
          'This test or procedure is recommended to gather more information about your condition. The benefits outweigh the risks, and proper preparation ensures accurate results.',
      doctorName: 'Dr. Jane Smith',
      doctorPhoto: 'images/doctor4.jpg',
    ),
    QuestionAnswer(
      question:
          'Are there lifestyle changes I can make to prevent certain conditions?',
      answer:
          'Vaccinations are essential for preventing certain diseases. Lifestyle changes, such as a healthy diet and regular exercise, play a crucial role in overall well-being. Screening helps detect issues early.',
      doctorName: 'Dr. John Doe',
      doctorPhoto: 'images/doctor1.jpg',
    ),
    QuestionAnswer(
      question: 'What should I expect during the recovery process?',
      answer:
          'During recovery, you may experience [specific symptoms], and it\'s essential to be aware of any warning signs. A follow-up appointment is scheduled to monitor your progress and address any concerns.',
      doctorName: 'Dr. Jane Smith',
      doctorPhoto: 'images/doctor2.jpg',
    ),
    // Add more questions and answers here
  ];

  List<QuestionAnswer> gymQuestions = [
    QuestionAnswer(
      question:
          'What are the potential risks and benefits of the recommended tests?',
      answer:
          'This test or procedure is recommended to gather more information about your condition. The benefits outweigh the risks, and proper preparation ensures accurate results.',
      doctorName: 'Dr. Jane Smith',
      doctorPhoto: 'images/doctor4.jpg',
    ),
    QuestionAnswer(
      question: 'How is this condition typically treated?',
      answer:
          'We will need to conduct a thorough examination and possibly some tests to determine the cause of your symptoms. Potential diagnoses will depend on the findings.',
      doctorName: 'Dr. Jane Smith',
      doctorPhoto: 'images/doctor2.jpg',
    ),
    QuestionAnswer(
      question:
          'Are there potential side effects of the prescribed medication?',
      answer:
          'This medication is prescribed to address [specific condition]. Common side effects include [list of potential side effects]. It\'s crucial to inform me of any over-the-counter medications you\'re taking to avoid potential interactions.',
      doctorName: 'Dr. John Doe',
      doctorPhoto: 'images/doctor3.jpg',
    ),
    QuestionAnswer(
      question:
          'What are the potential risks and benefits of the recommended tests?',
      answer:
          'This test or procedure is recommended to gather more information about your condition. The benefits outweigh the risks, and proper preparation ensures accurate results.',
      doctorName: 'Dr. Jane Smith',
      doctorPhoto: 'images/doctor4.jpg',
    ),
    QuestionAnswer(
      question:
          'Are there lifestyle changes I can make to prevent certain conditions?',
      answer:
          'Vaccinations are essential for preventing certain diseases. Lifestyle changes, such as a healthy diet and regular exercise, play a crucial role in overall well-being. Screening helps detect issues early.',
      doctorName: 'Dr. John Doe',
      doctorPhoto: 'images/doctor1.jpg',
    ),
    QuestionAnswer(
      question: 'What should I expect during the recovery process?',
      answer:
          'During recovery, you may experience [specific symptoms], and it\'s essential to be aware of any warning signs. A follow-up appointment is scheduled to monitor your progress and address any concerns.',
      doctorName: 'Dr. Jane Smith',
      doctorPhoto: 'images/doctor2.jpg',
    ),
    // Add more questions and answers here
  ];
  List<QuestionAnswer> PhysicalIllnessesQuestions = [
    QuestionAnswer(
      question:
          'Are there lifestyle changes I can make to prevent certain conditions?',
      answer:
          'Vaccinations are essential for preventing certain diseases. Lifestyle changes, such as a healthy diet and regular exercise, play a crucial role in overall well-being. Screening helps detect issues early.',
      doctorName: 'Dr. John Doe',
      doctorPhoto: 'images/doctor1.jpg',
    ),
    QuestionAnswer(
      question: 'How is this condition typically treated?',
      answer:
          'We will need to conduct a thorough examination and possibly some tests to determine the cause of your symptoms. Potential diagnoses will depend on the findings.',
      doctorName: 'Dr. Jane Smith',
      doctorPhoto: 'images/doctor2.jpg',
    ),
    QuestionAnswer(
      question:
          'Are there potential side effects of the prescribed medication?',
      answer:
          'This medication is prescribed to address [specific condition]. Common side effects include [list of potential side effects]. It\'s crucial to inform me of any over-the-counter medications you\'re taking to avoid potential interactions.',
      doctorName: 'Dr. John Doe',
      doctorPhoto: 'images/doctor3.jpg',
    ),
    QuestionAnswer(
      question:
          'What are the potential risks and benefits of the recommended tests?',
      answer:
          'This test or procedure is recommended to gather more information about your condition. The benefits outweigh the risks, and proper preparation ensures accurate results.',
      doctorName: 'Dr. Jane Smith',
      doctorPhoto: 'images/doctor4.jpg',
    ),
    QuestionAnswer(
      question:
          'Are there lifestyle changes I can make to prevent certain conditions?',
      answer:
          'Vaccinations are essential for preventing certain diseases. Lifestyle changes, such as a healthy diet and regular exercise, play a crucial role in overall well-being. Screening helps detect issues early.',
      doctorName: 'Dr. John Doe',
      doctorPhoto: 'images/doctor1.jpg',
    ),
    QuestionAnswer(
      question: 'What should I expect during the recovery process?',
      answer:
          'During recovery, you may experience [specific symptoms], and it\'s essential to be aware of any warning signs. A follow-up appointment is scheduled to monitor your progress and address any concerns.',
      doctorName: 'Dr. Jane Smith',
      doctorPhoto: 'images/doctor2.jpg',
    ),
    // Add more questions and answers here
  ];
  List<QuestionAnswer> likedQuestions =
      []; //if i need to add this as a new featchure
  List<QuestionAnswer> savedQuestions = [];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Added 2 more tabs
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          leading: IconButton(
            color: Theme.of(context).colorScheme.onTertiary,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "Community",
            style: TextStyle(
              color: Theme.of(context).colorScheme.onTertiary,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: TabBar(
            labelColor: Theme.of(context).colorScheme.onTertiary,
            isScrollable: true,
            tabs: [
              Tab(text: "All Questions"),
              Tab(text: "Gym Questions"), // New tab
              Tab(text: "Physical Illnesses Questions"), // New tab
              Tab(text: "My Saved Questions"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildAllQuestionsContent(),
            _buildGymQuestionsContent(), // New tab content
            _buildPhysicalIllnessesQuestionsContent(), // New tab content
            _buildMySavedQuestionsContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildAllQuestionsContent() {
    return ListView.builder(
      itemCount: allQuestions.length,
      itemBuilder: (context, index) {
        QuestionAnswer qa = allQuestions[index];
        bool isQuestionLiked = likedQuestions.contains(qa);
        bool isQuestionSaved = savedQuestions.contains(qa);

        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AnswerDetailsPage(qa: qa),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimary,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Question:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.onTertiary,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          color: Theme.of(context).colorScheme.onTertiary,
                          icon: Icon(
                            isQuestionLiked
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: isQuestionLiked ? Colors.blue : null,
                          ),
                          onPressed: () {
                            _toggleLikeQuestion(qa);
                          },
                        ),
                        IconButton(
                          color: Theme.of(context).colorScheme.onTertiary,
                          icon: Icon(Icons.share),
                          onPressed: () {
                            _shareQuestion(qa);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  qa.question,
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.onTertiary,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Answer by ${qa.doctorName}:',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onTertiary,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  qa.answer,
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.onTertiary,
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                  onPressed: () {
                    _toggleSaveQuestion(qa);
                  },
                  icon: Icon(
                    isQuestionSaved ? Icons.bookmark : Icons.bookmark,
                    color: isQuestionSaved ? Colors.blue : null,
                  ),
                  label: Text(
                    isQuestionSaved ? 'Unsave Question' : 'Save Question',
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildMySavedQuestionsContent() {
    return ListView.builder(
      itemCount: savedQuestions.length,
      itemBuilder: (context, index) {
        QuestionAnswer savedQa = savedQuestions[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AnswerDetailsPage(qa: savedQa),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Question:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onTertiary,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  savedQa.question,
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.onTertiary,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Answer by ${savedQa.doctorName}:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onTertiary,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  savedQa.answer,
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.onTertiary,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

//rakkez henaaaaa
  Widget _buildGymQuestionsContent() {
    return ListView.builder(
      itemCount: gymQuestions.length,
      itemBuilder: (context, index) {
        QuestionAnswer qa = gymQuestions[index];
        bool isQuestionLiked = likedQuestions.contains(qa);
        bool isQuestionSaved = savedQuestions.contains(qa);

        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AnswerDetailsPage(qa: qa),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimary,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Question:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onTertiary,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          color: Theme.of(context).colorScheme.onTertiary,
                          icon: Icon(
                            isQuestionLiked
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: isQuestionLiked ? Colors.blue : null,
                          ),
                          onPressed: () {
                            _toggleLikeQuestion(qa);
                          },
                        ),
                        IconButton(
                          color: Theme.of(context).colorScheme.onTertiary,
                          icon: Icon(Icons.share),
                          onPressed: () {
                            _shareQuestion(qa);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  qa.question,
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.onTertiary,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Answer by ${qa.doctorName}:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onTertiary,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  qa.answer,
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.onTertiary,
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                  onPressed: () {
                    _toggleSaveQuestion(qa);
                  },
                  icon: Icon(
                    isQuestionSaved ? Icons.bookmark : Icons.bookmark,
                    color: isQuestionSaved ? Colors.blue : null,
                  ),
                  label: Text(
                    isQuestionSaved ? 'Unsave Question' : 'Save Question',
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildPhysicalIllnessesQuestionsContent() {
    return ListView.builder(
      itemCount: PhysicalIllnessesQuestions.length,
      itemBuilder: (context, index) {
        QuestionAnswer qa = PhysicalIllnessesQuestions[index];
        bool isQuestionLiked = likedQuestions.contains(qa);
        bool isQuestionSaved = savedQuestions.contains(qa);

        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AnswerDetailsPage(qa: qa),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimary,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Question:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.onTertiary,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          color: Theme.of(context).colorScheme.onTertiary,
                          icon: Icon(
                            isQuestionLiked
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: isQuestionLiked ? Colors.blue : null,
                          ),
                          onPressed: () {
                            _toggleLikeQuestion(qa);
                          },
                        ),
                        IconButton(
                          color: Theme.of(context).colorScheme.onTertiary,
                          icon: Icon(Icons.share),
                          onPressed: () {
                            _shareQuestion(qa);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  qa.question,
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.onTertiary,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Answer by ${qa.doctorName}:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onTertiary,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  qa.answer,
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.onTertiary,
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                  onPressed: () {
                    _toggleSaveQuestion(qa);
                  },
                  icon: Icon(
                    isQuestionSaved ? Icons.bookmark : Icons.bookmark,
                    color: isQuestionSaved ? Colors.blue : null,
                  ),
                  label: Text(
                    isQuestionSaved ? 'Unsave Question' : 'Save Question',
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _toggleLikeQuestion(QuestionAnswer qa) {
    setState(() {
      if (likedQuestions.contains(qa)) {
        likedQuestions.remove(qa);
      } else {
        likedQuestions.add(qa);
      }
    });
  }

  void _toggleSaveQuestion(QuestionAnswer qa) {
    setState(() {
      if (savedQuestions.contains(qa)) {
        savedQuestions.remove(qa);
      } else {
        savedQuestions.add(qa);
      }
    });
  }

  void _shareQuestion(QuestionAnswer qa) async {
    final Uri shareableLink =
        Uri.parse('https://example.com/question?id=${qa.hashCode}');

    if (await canLaunch(shareableLink.toString())) {
      await launch(shareableLink.toString());
    } else {
      print('Could not launch $shareableLink');
    }
  }
}

class QuestionAnswer {
  final String question;
  final String answer;
  final String doctorName;
  final String doctorPhoto;

  QuestionAnswer({
    required this.question,
    required this.answer,
    required this.doctorName,
    required this.doctorPhoto,
  });
}

class AnswerDetailsPage extends StatelessWidget {
  final QuestionAnswer qa;

  AnswerDetailsPage({required this.qa});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Answer Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Answer by ${qa.doctorName}:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 8),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(qa.doctorPhoto),
            ),
            SizedBox(height: 16),
            Text(
              qa.answer,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:tdaway/modules/appointment_screen.dart';
// import 'package:tdaway/constants/constants.dart';

// import 'communttyChatScreen.dart';

// class CommunityScreen extends StatelessWidget {
 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.background,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 40),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 15),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       " Community",
//                       style: TextStyle(
//                         fontSize: 35,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
                    
//                   ],
//                 ),
//               ),
//               SizedBox(height: 30),
//               SizedBox(height: 15),
//               Padding(
//                 padding: const EdgeInsets.only(left: 15),
                
//               ),
//               GridView.builder(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                 ),
//                 itemCount: 4,
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 itemBuilder: (context, index) {
//                   return InkWell(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => communityScreen(),
//                         ),
//                       );
//                     },
//                     child: Container(
//                       margin: EdgeInsets.all(10),
//                       padding: EdgeInsets.symmetric(vertical: 15),
//                       decoration: BoxDecoration(
//                         color: Theme.of(context).colorScheme.secondary,
//                         borderRadius: BorderRadius.circular(10),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black12,
//                             blurRadius: 4,
//                             spreadRadius: 2,
//                           ),
//                         ],
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
                          
//                           Text(
//                             "Community Name",
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.w500,
//                               color: Theme.of(context).colorScheme.tertiary,
//                             ),
//                           ),
//                           Text(
//                             "description",
//                             style: TextStyle(
//                               color: Theme.of(context).colorScheme.tertiary,
//                             ),
//                           ),
//                           Row(
//                             mainAxisSize: MainAxisSize.min,
//                             mainAxisAlignment: MainAxisAlignment.center,
                            
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
