import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OnlineMapFrame extends StatelessWidget {
  final double lat = 24.7136;
  final double lng = 46.6753;

  final String imageUrl =
      'https://sm.mashable.com/t/mashable_in/photo/default/maps_dmpu.1248.jpg';

  const OnlineMapFrame({
    super.key,
  }); // replace with any static map or thumbnail image

  Future<void> _openGoogleMaps() async {
    final Uri googleMapsUrl = Uri.parse(
      "https://www.google.com/maps/search/?api=1&query=$lat,$lng",
    );
    if (await canLaunchUrl(googleMapsUrl)) {
      await launchUrl(googleMapsUrl, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch the map.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _openGoogleMaps,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            Image.network(
              imageUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(Icons.map, color: Colors.white, size: 16),
                    SizedBox(width: 4),
                    Text('Open in Maps', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
