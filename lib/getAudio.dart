import 'dart:convert';

import 'package:http/http.dart' as http;
import 'Features/home/Presentation/view_models/audioModel.dart';


class getAudio {

  Future<List<AudioFile>> get_Audio() async {
    http.Response response=
    await http.get(
        Uri.parse('https://api.quran.com/api/v4/chapter_recitations/1/1'));

    List<dynamic> data = jsonDecode(response.body);

    List<AudioFile> audioList = [];
          for(int i =0 ; i <data.length;i++)
                {
                  audioList.add(AudioFile.fromJson(data[i]),);
                }
          return audioList;
  }

}