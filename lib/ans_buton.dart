import 'package:flutter/material.dart';


class AnsButton extends StatelessWidget {
  const AnsButton({super.key, required this.ansText, required this.onTap});

  final String ansText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      style: ElevatedButton.styleFrom(
        
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        backgroundColor: const Color.fromARGB(255, 118, 5, 184),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

      ),
      onPressed: onTap,
      child:  Text(ansText, style: 
      const TextStyle(fontSize: 15),),
    );
  }
}

