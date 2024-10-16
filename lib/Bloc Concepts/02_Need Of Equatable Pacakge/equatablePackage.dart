/*
Need Of Equatable Package:

Let's assume a scenario where we created class and then we make its two objects, both of the object contain
same data. Now If we apply == operator on both of them(objects) then it will show us false..shows that
both of the object is different because its memory sizes it occupied and hash code is not same while
its data is same.

Then we write a == bool code which check both of the objects, and this code is called when
we use == operator on both of them(objects), so it will return true and return same hashcodes for both
of them(objects) if it contain same data.


Now, it is easy for us to write & define that code and apply it for limited such as 4-5 or upto 10
properties/variables of a class but it is so much difficult/Complex for us to write and define that
code for more than 100 or upto 100 properties/variables so for that purpose we use EQUATABLE PACKAGE.

In equatable function, we simple extends our class with it and write a one line of code
which work similar as the above mention code/Concept. So, it is easy to apply and modify.


See the below code:
*/

//Main Code

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class equatablePackage extends StatelessWidget {
  const equatablePackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff272727),
      appBar: AppBar(
        backgroundColor: const Color(0xff272727),
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios_new_sharp,size: 20,color: Colors.white,)),
        automaticallyImplyLeading: false,
        title: const Text(
          'Need Of Equatable Package',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: ()
              {


                //Without Equatable Package
                /*
                Person person_01 = new Person('Ali', 20);
                Person person_02 = new Person('Ali', 20);

                print(person_01.hashCode);
                print(person_02.hashCode);
                print(person_01==person_02);
                 */


                //With Equatable Package

                /*
                User user_01 = new User('Aslam', 21);
                User user_02 = new User('Aslam', 21);

                print(user_01.hashCode);
                print(user_02.hashCode);
                print(user_01==user_02);
                */

              },
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(child: Text('Button For Creating the Two Objects',style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white
                ),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Without Equatable Package

class Person
{
  String? PersonName;
  int? PersonAge;

  //Constructor
  Person(String? name, int? age)
  {
    this.PersonName=name;
    this.PersonAge=age;
  }


  //Now This code check both of the created data, If it is same then it will return same hashcode
  //for both of them otherwise return false.
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Person &&
              runtimeType == other.runtimeType && //Here in this code only two properties but it will become complex if the properties are 100.
              PersonName == other.PersonName &&
              PersonAge == other.PersonAge;

  @override
  int get hashCode => PersonName.hashCode ^ PersonAge.hashCode;

}




//With Equatable Package

class User extends Equatable
{

  String? userName;
  int? userAge;

  //Constructor
  User(String? name, int? age)
  {
    this.userName=name;
    this.userAge=age;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
    userName.hashCode,
    userAge.hashCode
  ];
}
