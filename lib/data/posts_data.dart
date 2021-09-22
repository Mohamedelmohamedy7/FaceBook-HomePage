

import 'package:facebooktasks/model/post_model/post_model.dart';
import 'package:facebooktasks/model/story_model.dart';
import 'package:facebooktasks/model/user_model.dart';

User currentUser = User(
  name: 'Mohamed Ghynm',
  image:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_F6JW_pwX8_jnZM_dOvA1MmiRudbKDs2ouQ&usqp=CAU",
  isActivited: true,
);

List<User> userDataList = [
  User(
    name: 'Hala Ahmed',
    image:
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWF6_IkpuA-BVIQyf2H8OlX2l46XuuAN_bgHG6An86cOuTDuHf4TR53vbt01ccyaytUTE&usqp=CAU",
    isActivited: true,
    ),
  User(
    name: 'Mohamed Ali',
    image:
        "https://1.bp.blogspot.com/-zqbXraWkG6s/Xpjmfc-ezLI/AAAAAAAAEOI/n1QoNYBdn7MALZ6o2orfwhAyTs7b7E8tgCLcBGAsYHQ/s1600/hdoaa.com%2B%25D8%25B5%25D9%2588%25D8%25B1%2B%25D8%25AC%25D9%2585%25D9%258A%25D9%2584%25D8%25A9%2B%252839%2529.jpg",
    isActivited: true,
  ),
  User(
    name: 'Ibrahim said',
    image:
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
    isActivited: false,
  ),
  User(
    name: 'Hala Ahmed',
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWF6_IkpuA-BVIQyf2H8OlX2l46XuuAN_bgHG6An86cOuTDuHf4TR53vbt01ccyaytUTE&usqp=CAU",
    isActivited: true,
  ),
  User(
    name: 'Ahmed Khalid',
    image:
        "https://www.pixsy.com/wp-content/uploads/2021/04/ben-sweet-2LowviVHZ-E-unsplash-1.jpeg",
    isActivited: true,
  ),
  User(
    name: 'Ibrahim said',
    image:
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
    isActivited: false,
  ),
  User(
    name: 'Mostafa saad',
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7HePA9pZkV4Ko4pC3LQ3lhXXU8lMyYWHJTMjI0J4tVev_6wOi5mr2ZdEGIVUbhRqXkFg&usqp=CAU",
    isActivited: true,
  ),
  User(
    name: 'Amira Alaa',
    image:
        "https://media.istockphoto.com/photos/colored-powder-explosion-on-black-background-picture-id1057506940?k=20&m=1057506940&s=612x612&w=0&h=3j5EA6YFVg3q-laNqTGtLxfCKVR3_o6gcVZZseNaWGk=",
    isActivited: true,
  ),
  User(
    name: 'Ibrahim said',
    image:
        "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
    isActivited: false,
  ),
  User(
    name: 'Ibrahim said',
    image:
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
    isActivited: false,
  ),
  User(
    name: 'Hala Ahmed',
    image:
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWF6_IkpuA-BVIQyf2H8OlX2l46XuuAN_bgHG6An86cOuTDuHf4TR53vbt01ccyaytUTE&usqp=CAU",
    isActivited: true,
  ),
];

List<Story> stories = [
  Story(
    imagestory:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT12x8sOYHudkqiL1Ym1OYg0RuXxUdYAOTf6A&usqp=CAU",
    imageuser: userDataList[0].image,
    name: userDataList[0].name,
  ),
  Story(
    imagestory:
        "https://1.bp.blogspot.com/-vD0mXhhH9dw/WH6CnZXMLtI/AAAAAAAAkYU/CGilemend-sZVKeH5y4H0yxe3v10uPQLACLcB/s400/w%2Cv-pf.jpg",
    imageuser: userDataList[4].image,
    name: userDataList[4].name,
  ),
  Story(
    imagestory:
        "https://i1.wp.com/traveltalez.com/blog/wp-content/uploads/2019/09/9.jpg?resize=708%2C1062&ssl=1",
    imageuser: userDataList[1].image,
    name: userDataList[1].name,
  ),
  Story(
    imagestory:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJJxVRZ2IvnEDt95iJ21Jq27yljMRLIAgQzA&usqp=CAU",
    imageuser: userDataList[2].image,
    name: userDataList[2].name,
  ),
  Story(
    imagestory:
        "https://cnn-arabic-images.cnn.io/cloudinary/image/upload/w_1920,h_1080,c_fill,q_auto/cnnarabic/2021/05/05/images/184242.jpg",
    imageuser: userDataList[3].image,
    name: userDataList[3].name,
  ),
  Story(
    imagestory:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT12x8sOYHudkqiL1Ym1OYg0RuXxUdYAOTf6A&usqp=CAU",
    imageuser: userDataList[0].image,
    name: userDataList[0].name,
  ),
  Story(
    imagestory:
        "https://1.bp.blogspot.com/-vD0mXhhH9dw/WH6CnZXMLtI/AAAAAAAAkYU/CGilemend-sZVKeH5y4H0yxe3v10uPQLACLcB/s400/w%2Cv-pf.jpg",
    imageuser: userDataList[4].image,
    name: userDataList[4].name,
  ),
  Story(
    imagestory:
        "https://i1.wp.com/traveltalez.com/blog/wp-content/uploads/2019/09/9.jpg?resize=708%2C1062&ssl=1",
    imageuser: userDataList[1].image,
    name: userDataList[1].name,
  ),
];

List<Post> posts = [
  Post(
   userImage: userDataList[0].image,
    user: userDataList[0].name,
    text: "Ready to try whatever it takes ...",
    image:
        "https://images.pexels.com/photos/556666/pexels-photo-556666.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    dateTime: "30 min",
    likes: 420,
    comments: 120,
    shares: 60,

  ),
  Post(
     userImage: userDataList[1].image,
    user: userDataList[1].name,
    text: "Photography may seem like an individual hobby",
    image:
        "https://content.api.news/v3/images/bin/b06bef9a5f8153a24f4abb07cbc2c11e?width=650",
    dateTime: "3 sec",
    likes: 15,
    comments: 4,
    shares: 2,


  ),
  Post(
     userImage: userDataList[3].image,
    user: userDataList[3].name,
    text: "Average is for the weak ",
    dateTime: "1 day",
    likes: 175,
    comments: 60,
    shares: 20,
   ),
  Post(
     userImage: userDataList[4].image,
    user: userDataList[4].name,
    text:
        "Recently while picking up my youngest daughter from school one of the"
        " teachers noticed me doing some work as I waited in the car line. She asked"
        " about what I do. After talking about my job as a blogger and how much"
        " I cherish the flexibility to be with my kids as much as I am, she asked me"
        " to write a letter to my daughter about becoming a successful woman",
    dateTime: "4 hours",
    likes: 14,
    comments: 7,

  ),
  Post(
     userImage: userDataList[5].image,
    user: userDataList[5].name,
    text: "The panic from a catastrophe is another catastrophe",
    dateTime: "16 min",
    likes: 5,
    comments: 1,

  ),
  Post(
     user: 'Mohamed Ghynm',
    userImage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_F6JW_pwX8_jnZM_dOvA1MmiRudbKDs2ouQ&usqp=CAU",
    imagecarsoul: [
      "assets/images/user_3.jpg",
      "assets/images/user_4.jpg",
      "assets/images/current_user.jpg",
      "assets/images/user_6.jpg"
    ],
    shares: 10,
    likes: 50,
    comments: 20,
    dateTime: "1 day",
    text: "My favorites images...",

  ),
];
