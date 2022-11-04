import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:test_flutter/data/character_api.dart';
import 'package:test_flutter/model/character.dart';


class CharacterList extends StatefulWidget {
  CharacterList({required Key key}) : super(key: key);
  @override
  _CharacterListState createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterList> {
List<Character> characterList = <Character>[];

void getCharactersfromApi() async {
  CharacterApi.getCharacters().then((response) {
    setState(() {
      Iterable list = json.decode(response.body);
      characterList = list.map((model) => Character.fromJson(model)).toList();
    });
  });
}

@override
void initState() {
  super.initState();
  getCharactersfromApi();
}

@override
Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: Text("Form Test V 0.1"),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: characterList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(characterList[index].name),
                subtitle: Text(characterList[index].nickname),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(characterList[index].img),
                ),
              );
            }),
      ));
}
}