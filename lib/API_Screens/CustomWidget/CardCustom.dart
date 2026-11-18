import 'package:flutter/material.dart';

class Cardcustom extends StatelessWidget {
   Cardcustom({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });
  void Function() onTap;
  final String? image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
              child: image != null && image!.isNotEmpty
                  ? Image.network(
                image!,
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,

              )
                  : Container(
                height: 180,
                width: double.infinity,
                color: Colors.purple.withOpacity(0.1),
                child: const Icon(Icons.article, size: 50, color: Colors.purple),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),

                  Text(
                    subtitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}