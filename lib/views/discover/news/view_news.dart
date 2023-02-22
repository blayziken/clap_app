import 'package:clap/app_exports.dart';

class ViewNews extends StatelessWidget {
  final String image, title, desc, time;
  const ViewNews({super.key, required this.image, required this.title, required this.desc, required this.time});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 0,
                child: SizedBox(
                  width: double.infinity,
                  child: Image.asset(image, fit: BoxFit.cover),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        BOLDTEXT(
                          text: title,
                          color: Colors.white,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          size: 20.sp,
                        ),
                        YMargin.margin20,
                        const NORMALTEXT(
                          text:
                              'The National Association of Nigerian Students (NANS) has stressed the need for a comprehensive overhaul of the education sector. This is just as it lamented incessant  industrial actions  in tertiary institutions NANS  President, Sunday Asefon, who spoke at an event to celebrate the association’s 40th anniversary, urged \n\n \nThe National Association of Nigerian Students (NANS) has stressed the need for a comprehensive overhaul of the education sector. This is just as it lamented incessant  industrial actions  in tertiary institutions NANS  President, Sunday Asefon, who spoke at an event to celebrate the association’s 40th anniversary, urged',
                          color: Colors.white,
                          weight: FontWeight.w400,
                          spacing: 0.5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
