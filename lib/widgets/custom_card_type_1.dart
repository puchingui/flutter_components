import 'package:flutter/material.dart';

import 'package:fl_components/themes/themes.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary,),
            title: Text('Soy Un Titulo'),
            subtitle: Text('Proident consectetur sunt sint ullamco nostrud dolore adipisicing quis ad aliqua non mollit commodo.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {}, 
                  child: const Text('Cancel')
                  ),
                TextButton(
                  onPressed: () {}, 
                  child: const Text('Ok')
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}