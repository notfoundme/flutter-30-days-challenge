 import 'dart:math';

import 'package:bloc_example/api/news_api.dart';
import 'package:bloc_example/model/news_model.dart';

class NewsMockApiImpl implements NewsApi{
  @override
  Future<List<NewsModel>> getAllNews() async  {

    await Future.delayed(Duration(seconds: 2));

    // if(Random().nextBool()==false){
    //   throw Exception("Error gettting data");
    // }
    return [
      NewsModel(
        title: "Major Tech Company Unveils Revolutionary AI-powered Device",
        content:
            "In a recent study, scientists have discovered a potential breakthrough in the treatment of Alzheimer's disease. A new drug, currently in the experimental phase, has shown promising results in early trials. The drug's mechanism targets specific proteins associated with Alzheimer's, providing hope for a more effective and targeted treatment approach. Researchers are cautiously optimistic about the findings, emphasizing the need for further testing and validation before it can be considered a viable treatment option for patients.",
        image:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png",
      ),
      NewsModel(
        title:
            "Breakthrough in Medical Research: New Drug Shows Promise in Treating Alzheimer's",
        content:
            "In a recent study, scientists have discovered a potential breakthrough in the treatment of Alzheimer's disease. A new drug, currently in the experimental phase, has shown promising results in early trials. The drug's mechanism targets specific proteins associated with Alzheimer's, providing hope for a more effective and targeted treatment approach. Researchers are cautiously optimistic about the findings, emphasizing the need for further testing and validation before it can be considered a viable treatment option for patients.",
        image:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png",
      ),
      NewsModel(
        title:
            "Global Collaboration Effort: Scientists Join Forces to Combat Climate Change",
        content:
            "A consortium of international scientists and researchers has embarked on a collaborative effort to address the urgent challenges posed by climate change. The initiative aims to pool resources, expertise, and data to develop innovative solutions for mitigating the impact of climate change on a global scale. With countries around the world facing unprecedented environmental challenges, this collaborative approach signals a united front in the fight against climate change.",
        image:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png",
      ),
      NewsModel(
        title:
            "Space Exploration Milestone: Successful Mission to Mars Reveals New Discoveries",
        content:
            "In a historic achievement for space exploration, a recent mission to Mars has yielded groundbreaking discoveries. The rover, equipped with state-of-the-art instruments, has provided unprecedented insights into the Martian landscape and geology. Scientists are particularly excited about the possibility of finding evidence of ancient life on the red planet. This success marks a significant step forward in our understanding of the solar system and the potential for human exploration of Mars in the future.",
        image:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png",
      ),
      NewsModel(
        title: "Economic Rebound: Global Markets Show Signs of Recovery",
        content:
            "After a period of economic uncertainty, there are positive indications of a global economic rebound. Financial markets around the world have experienced a notable upturn, with increased investor confidence and improved economic indicators. Analysts attribute the recovery to a combination of factors, including successful",
        image:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png",
      ),
    ];
 
  }}