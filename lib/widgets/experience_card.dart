import 'package:flutter/material.dart';

class ExperienceCard extends StatelessWidget {
  final String startDate;
  final String endDate;
  final String jobTitle;
  final String companyName;
  final String jobDescription;
  final String achievements;
  final String skills;
  final String location;

  ExperienceCard({
    super.key,
    required this.startDate,
    required this.endDate,
    required this.jobTitle,
    required this.companyName,
    required this.jobDescription,
    required this.achievements,
    required this.skills,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showDetail(context),
      child: Card(
        margin: EdgeInsets.all(10),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // date of experience
              Text(
                '$startDate - $endDate',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              // job title
              Text(
                jobTitle,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 5),
              // company name and location
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 20,
                  ),
                  SizedBox(width: 5),
                  Text(
                    '$companyName, $location',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.justify,
                    softWrap: true,
                  ),
                ],
              ),
              SizedBox(height: 5),
              // skills
              Text(skills),
            ],
          ),
        ),
      ),
    );
  }

  // tap the card
  void _showDetail(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            '$jobTitle at $companyName',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // date of experience
                Text(
                  '$startDate - $endDate',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                // location
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.red,
                      size: 20,
                    ),
                    SizedBox(width: 5),
                    Text(
                      '$companyName, $location',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                      softWrap: true,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                // skills
                Text(
                  'Skills: $skills',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                // job description
                Text(
                  'Description:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  jobDescription,
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 10),
                // achievements
                Text(
                  'Achievements:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  achievements,
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
