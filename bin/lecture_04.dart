//main method START...
void main() {
  //List...
  List<dynamic> infoList = ['Kamal', 'Radha', 'Krishna', 'Gita', 2022];
  //read data from list
  print(infoList[1]);
  print("Year = ${infoList[4]}");
  //clear all data from list
  infoList.clear();
  print(infoList);

  //using for loop in list
  List<int> oddNumList = [1, 3, 5, 7, 9];
  for (var i = 0; i < oddNumList.length; i++) {
    print(oddNumList[i]);
  }


  //Map...
  //map declaration
  Map userContact = {'Palash': 017285, 'Krishna': 0188142, 'Radha': 0192258};
  Map<String, int> userNameAge = {'Gopal': 25, 'Kamal': 22, 'Gita': 21};
  Map<int, dynamic> numData = {1: 'Dart', 2: 'C', 3: 'Java', 4: 'C#'};

  //insert data manually in Map
  Map<String, String> productPrice = {};
  productPrice['Laptop'] = '3700 TK';
  productPrice['Nokia mobile'] = '3000 Tk';
  productPrice['UPS'] = '3800 TK';
  print("Map = $productPrice");

  //insert all value from another Map
  Map<String, dynamic> newMap = {};
  newMap.addAll(userNameAge);
  print(newMap);

  //read data from Map
  Map<int, dynamic> numData1 = {1: 'Dart', 2: 'C', 3: 'Java', 4: 'C#'};
  print(numData1[4]);
  print(numData1[1]);

  //using forEach loop in Map
  productPrice.forEach((key, value) {
    print('$key: ' '$value');
  });

  //using if_else conditional statement
  //leap year program
  var year = 1900;
  if((year % 400 == 0) || (year % 100 != 0) && (year % 4 == 0)){
    print("$year is leap year.");
  } else {
    print("$year is not leap year.");
  }

  //using conditional statement in Loop
  var decimalValueList = [3.1416, 1.4146, 2.202089];
  for(var i in decimalValueList){ 
    if(i == 3.1416){
      print("Yes! This value of Pi.");
    } else if(i != 2.008){
      print("Oh! This value is not found in the list.");
      break;
    } else{
      print("All condition is false.");
      break;
    }
  }

  //using some built-in method in List
  var myList = ['Karim', 'Kartik', 'Radha', 'Kabir'];
  for(var i in myList){
    if(i.contains('Kartik')){
      print("Yes");
    } else if(i.endsWith('r')){
      print(i);
    }
  }


  restApiExplain(); //method calling
  dartLoop(); //method calling
}
//main method END...


//using Map and List in Rest API
void restApiExplain() {
  var myRestApiData = {
    'brand_list': [
      {
        'brand_id': '2232',
        'brand_name': 'Techno',
        'brand_image': '17012022-logo-1.png',
        'total_mobile': 4
      },
      {
        'brand_id': 111,
        'brand_name': 'Symphony',
        'brand_image': '14052021-logo2.png',
        'total_mobile': 17
      }
    ]
  };

  print(myRestApiData); //print full Map
  //read data from Map
  print(myRestApiData['brand_list']![0]['brand_name']); //Showing (Techno)
}

//using for_in_loop in list
void dartLoop() {
  var list = ['Gopal', 'Krishna', 'Raju'];
  for(var i in list){
    print(i);
  }
}