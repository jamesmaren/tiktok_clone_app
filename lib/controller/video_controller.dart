import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_tiktok_clone/constants.dart';
import 'package:flutter_tiktok_clone/models/video.dart';
import 'package:get/get.dart';

class VideoController extends GetxController {
  final Rx<List<Video>> _videoList = Rx<List<Video>>([]);

  List<Video> get videoList => _videoList.value;

  @override
  void onInit() {
    super.onInit();
    _videoList.bindStream(
        firestore.collection('videos').snapshots().map((QuerySnapshot query) {
      List<Video> retVal = [];
      for (var element in query.docs) {
        retVal.add(
          Video.fromSnap(element),
        );
      }
      return retVal;
    }));
  }
}
