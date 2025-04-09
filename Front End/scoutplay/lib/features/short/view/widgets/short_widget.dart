import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:provider/provider.dart';
import 'package:scoutplay/features/short/controller/short_controller.dart';
import 'package:video_player/video_player.dart';

class ShortWidget extends StatefulWidget {
  const ShortWidget({super.key});

  @override
  State<ShortWidget> createState() => _ShortWidgetState();
}

class _ShortWidgetState extends State<ShortWidget> {
  // int currPlayIndex = 0;

  @override
  Widget build(BuildContext context) {
    final videos = context.read<ShortController>().videos;
    return PageView.builder(
      scrollDirection: Axis.vertical,

      itemCount: videos.length,
      itemBuilder: (context, index) {
        return VideoWidget(videoPath: videos[index]);
      },
    );
  }
}

class VideoWidget extends StatefulWidget {
  final String videoPath;
  const VideoWidget({super.key, required this.videoPath});

  @override
  State<VideoWidget> createState() => VideoWidgetState();
}

class VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  int? bufferDelay;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController = VideoPlayerController.asset(widget.videoPath);

    await Future.wait([_videoPlayerController.initialize()]);

    _createChewieController();
    setState(() {});
  }

  void _createChewieController() {
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      looping: true,
      showControls: false,
      aspectRatio: 9 / 16,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_chewieController != null &&
        _chewieController!.videoPlayerController.value.isInitialized) {
      return Chewie(controller: _chewieController!);
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }
}
