import 'package:flutter/material.dart';
import 'package:projects/pages/user_chat.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // static const String id = 'home_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // padding: EdgeInsets.all(0),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(child: Column(
        children: [
          HeadCard(),
          SizedBox(height: 2),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    DonationJar('Donation Jar'),
                    SizedBox(height: 5),
                    CampaignGoalCard(),
                    SizedBox(height: 5),
                    User('Hafrasha','https://img.freepik.com/free-vector/young-man-with-short-hair_1308-174666.jpg?ga=GA1.1.1835447491.1738146055&semt=ais_hybrid', '20000'),
                    SizedBox(height: 5),
                    User('mafeer','https://img.freepik.com/free-vector/young-man-with-glasses-illustration_1308-174706.jpg?ga=GA1.1.1835447491.1738146055&semt=ais_hybrid', '80000'),
                  ],
                ),
              ),
              // SizedBox(width: 1),
              Expanded(
                child: Column(
                  children: [
                    StockRatesBox(),
                    SizedBox(height: 5),
                    User('Hafrasha','https://img.freepik.com/free-vector/young-boy-avatar-illustration_1308-174686.jpg?ga=GA1.1.1835447491.1738146055&semt=ais_hybrid', '20000'),
                    SizedBox(height: 5),
                    AddedCards(),
                    SizedBox(height: 5),
                    AddedCards(),
                  ],
                ),
              ),
            ],
          ),
          
          
          // ElevatedButton(onPressed: () {
          //   Navigator.pushNamed(context, 'bottomsheet');
          // }, child: Text('sliding panel'))
        ],
      ),)
    );
  }
}

class HeadCard extends StatelessWidget {
  const HeadCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      // margin: EdgeInsets.only(left: 0, right: 0),
  width: 414,
  height: 250,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(5),
      topRight: Radius.circular(5),
      bottomLeft: Radius.circular(20),
      bottomRight: Radius.circular(20),
    ),
    color: Color(0xFFFFFFFF),
  ),
  child: Column(
    children: [
      Material(
        child: ListTile(
  leading: ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: CircleBorder(),
      padding: EdgeInsets.all(10), 
      foregroundColor: Colors.grey[300], 
    ),
    onPressed: () {
      // Navigator.pushNamed(context, 'userchat', arguments: 'Hey Prasanna 123');
      Navigator.pushNamed(context, 'bottomsheet');
    },
    child: Icon(
      Icons.person,
      color: Colors.black,
    ),
  ),
  title: Center(
    child: Text(
      'My Campaign',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
  ),
  trailing: ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: CircleBorder(),
      padding: EdgeInsets.all(10), 
      foregroundColor: Colors.grey[300], 
    ),
    onPressed: () {
      Navigator.pushNamed(context, 'modal');
    },
    child: Icon(
      Icons.settings,
      color: Colors.black,
      
    ),
  ),
),


      ),
      SizedBox(height: 20),

      
      Center(
        child: Column(
          children: [
            Text(
              'Overall campaign balance',
              style: TextStyle(fontSize: 14, color: Colors.black54, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 2),
            RichText(
              textAlign: TextAlign.center, 
              text: TextSpan(
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.w800, color: Colors.black),
                children: [
                  TextSpan(text: '\$122,241'),
                  TextSpan(
                    text: '.00',
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              ),
              onPressed: () {},
              child: Text(
                'Withdraw Funds',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);


      
    
  }
}

Widget DonationJar(String abc,) {
  return  Column(
  // mainAxisSize: MainAxisSize.min, 
  children: [

//     Container(
//       child: InkWell(                        
//   child: Text("data"),                        
//   onTap: () {                          
//   print("tapped on container");
//   },                      
// )
//     ),
    
    Container(
      width: 200,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xFFDAB7F1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 16,
            backgroundImage: NetworkImage(
                'https://w0.peakpx.com/wallpaper/202/106/HD-wallpaper-sakthi-sudhrason-on-emoji-emoji-emoji-faces-emoji-boy-emoji.jpg'),
          ),
          SizedBox(width: 5),
          CircleAvatar(
            radius: 16,
            backgroundImage: NetworkImage(
                'https://w0.peakpx.com/wallpaper/202/106/HD-wallpaper-sakthi-sudhrason-on-emoji-emoji-emoji-faces-emoji-boy-emoji.jpg'),
          ),
          SizedBox(width: 5),
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: Color(0xFFD1A2EE),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                '+8',
                style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w800),
              ),
            ),
          ),
        ],
      ),
    ),

    
    Container(
      width: 200,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          Text(
            "Donation Jar",
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
          ),
          Text("\$245.00 left", style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w700)),
        ],
      ),
    ),
  ],
);


}


class CampaignGoalCard extends StatelessWidget {
  const CampaignGoalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Color(0xFFF5F9F5),
        borderRadius: BorderRadius.circular(40),
      ),
      height: 200,
      width: 200,
      
        child: Column(
          children: [
            Text(
              'Campagin Goal',
              style: TextStyle(fontSize: 13, color: Colors.black54, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 3),
            RichText(
              textAlign: TextAlign.center, 
              text: TextSpan(
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Colors.black),
                children: [
                  TextSpan(text: '\$320,000'),
                  TextSpan(
                    text: '.00',
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),

            Container(
              padding: EdgeInsets.all(3),
              width: 75,
              height: 34,
              decoration: BoxDecoration(
        color: Color(0xFF75D29E),
      borderRadius: BorderRadius.horizontal(
      left: Radius.circular(25), 
      right: Radius.circular(25), 
    ),

    border: Border.all(
          color: Colors.black, 
          width: 1.5, 
    ), 
      boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 2),
      ],

      
    ),

    

  child: Center(
    child: Text(
      '+15,6%',
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
    ),
  ),
              
            )
            
          ],
        ),
      
    );
  }
}

Widget User(String usname, String imageUrl, String amount) {
  return Container(
    
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Color(0xFFCFEDF7),
      borderRadius: BorderRadius.circular(35),
    ),
    height: 95,
    width: 200,
    child: Row(
      children: [
        CircleAvatar(
          radius: 16,
          backgroundImage: NetworkImage(imageUrl),
          
        ),
        SizedBox(width: 10),
        
        Column(
          mainAxisAlignment: MainAxisAlignment.center,  
          children: [  Text('Hafrasha', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800,))  , Text('\$28,56.00',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Color(0xFF797979)))],
        )
        
      ],
    ),
  );
}

class StockRatesBox extends StatelessWidget {
  const StockRatesBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: EdgeInsets.all(16),
      height: 225,
      width: 200,
    decoration: BoxDecoration(
      color: Color(0xFFE2E6E5),
      borderRadius: BorderRadius.circular(30),
      boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 2),
      ],
    )
  ,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

         Row(
    children: [
      Container(
        width: 15,
        height: 15,
        decoration: BoxDecoration(
          color: Color(0xFFF6F352),
          shape: BoxShape.circle,
          border: Border.all(
          color: Colors.black, 
          width: 2, 
    ), 
        ),
      ),
      SizedBox(width: 8),

      Text("\$80,110", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      Text(".00", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.grey)),

      
      
    ],
  ),

        
        
        SizedBox(height: 8),


        Row(
    children: [
      Container(
        width: 15,
        height: 15,
        decoration: BoxDecoration(
          color: Color(0xFF7FE8B7),
          shape: BoxShape.circle,
          border: Border.all(
          color: Colors.black, 
          width: 2, 
    ), 
        ),
      ),
      SizedBox(width: 8),
      Text("\$80,110", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      Text(".00", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.grey)),
    ],
  ),

SizedBox(height: 8),


  Row(
    children: [
      Container(
        width: 15,
        height: 15,
        decoration: BoxDecoration(
          color: Color(0xFF7FD4D5),
          shape: BoxShape.circle,
          border: Border.all(
          color: Colors.black, 
          width: 2, 
    ), 
        ),
      ),
      SizedBox(width: 8),
       Text("\$80,110", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      Text(".00", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.grey)),
    ],
  ),
        
      ],
    ),
  );

  }
}



class AddedCards extends StatelessWidget {
  const AddedCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFFF5FAF4),
        borderRadius: BorderRadius.circular(30),
      ),
      height: 225,
      width: 200,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Text(
              '8 Cards',
              style: TextStyle(fontSize: 14, color: Colors.black54, fontWeight: FontWeight.w700),
            ),
          Text("Added Cards", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          SizedBox(height: 5),
          Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('+1231', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900)),
        Text(
          '+15.6%',
          style: TextStyle(
            fontSize: 14,
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    SizedBox(height: 10),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('+1231', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900)),
        Text(
          '+15.6%',
          style: TextStyle(
            fontSize: 14,
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    SizedBox(height: 10),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('+1231', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900)),
        Text(
          '+15.6%',
          style: TextStyle(
            fontSize: 14,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    SizedBox(height: 10),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('+1231', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900)),
        Text(
          '+15.6%',
          style: TextStyle(
            fontSize: 14,
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    )
         
        ],
      ),
    );
  }
}




