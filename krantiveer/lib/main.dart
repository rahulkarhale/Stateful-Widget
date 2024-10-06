import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KrantiveerApp(),
    );
  }
}

class KrantiveerApp extends StatefulWidget {
  const KrantiveerApp({super.key});

  @override
  State createState() => _PlayerAppState();
}

class _PlayerAppState extends State<KrantiveerApp> {
  List<String> krantiveer = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSBF2lrrWQOxxSzEqFt5XJxnp0biflhRiMfQ&s",
    "https://images.nightcafe.studio/jobs/KmvJ2NiRa60FgVnwemY5/KmvJ2NiRa60FgVnwemY5--1--60z0i.jpg?tr=w-1600,c-at_max",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS36X6NlViMLO-DbbVyeutr70Or6ae5_csYcQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7UaJlSkFs1PqX4ByC8dX6ASy7lz9XP8rTpw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFmim6YaKortuuZkIKnYYcb1u3LY3z2SC8pQ&s",
    
  ];

  List<String> informatio= [
    "ijamata, also known as Jijabai, was the mother of Chhatrapati Shivaji Maharaj, the founder of the Maratha Empire. Born in 1598, she played a crucial role in Shivaji's upbringing, instilling in him values of bravery, patriotism, and leadership. Jijabai was known for her wisdom, political acumen, and devotion to her son's cause of establishing a sovereign Maratha kingdom. Her guidance and strong influence were instrumental in shaping Shivaji's character and vision. She passed away in 1674, just a few months before Shivaji's coronation as king.",
    "Rani Lakshmibai, also known as the Queen of Jhansi, was a key figure in the Indian Rebellion of 1857. Born in 1828 as Manikarnika Tambe, she married the Maharaja of Jhansi, Raja Gangadhar Rao, and became the queen. After the Maharaja's death, the British attempted to annex Jhansi, refusing to recognize her adopted son as the heir. Rani Lakshmibai, known for her bravery and leadership, led her army against the British forces. She fought valiantly, often on the battlefield herself, before dying in combat in 1858. She remains a symbol of resistance and courage in India's fight for independence.",
    "Savitribai Phule was a pioneering Indian social reformer, educator born in 1831. Along with her husband, Jyotirao Phule, she played a key role in advocating for women's rights and the education of marginalized communities in India. In 1848, she opened the first school for girls in Pune, making her one of the first female teachers in India. Savitribai also worked to abolish practices like child marriage and untouchability, promoting equality and social justice. She is remembered her immense contributions to education and social reform,particularly for women and underprivileged. ",
    "Bhagat Singh was a revolutionary freedom fighter born in 1907. He fought against British rule and was known for his radical activism, including the bombing of the Central Legislative Assembly in 1929. Arrested for his actions, he was sentenced to death and hanged in 1931 at the age of 23. Bhagat Singh is remembered as a martyr and a symbol of India's independence struggle.",
    "Chhatrapati Shivaji Maharaj was the founder of the Maratha Empire in India, born in 1630. He is celebrated for his military strategy, leadership, and establishing a strong and independent kingdom. Shivaji Maharaj fought against the Mughal Empire and other regional powers to protect his people and expand his kingdom. Known for his innovative guerrilla warfare tactics and respect for all religions, he was crowned as king in 1674. Shivaji Maharaj remains a symbol of bravery, nationalism, and good governance in Indian history. He passed away in 1680.",

  
  ];
  int infoIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("..Krantiveer..",
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),),
        backgroundColor: Colors.orange, 
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          SizedBox(
            height: 400,
            width: 300,
            child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Information: ${informatio[infoIndex]}",
                        style: const TextStyle(
                        fontSize: 16,

                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                        
                          
                          ),
                      ),
                    ],
                  )
                
          ),
          Center(
            child: SizedBox(
              height: 180,
              width: 250,
              child: Image.network(krantiveer[infoIndex]),
            ),
          ),

       
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (infoIndex< krantiveer.length - 1) {
            infoIndex++;
          } else {
  
            infoIndex = 0;
      
          }
          setState(() {});
        },
        backgroundColor: Colors.orange, 
        
        child: const Icon(Icons.forward),
      ),
    );
  }
}