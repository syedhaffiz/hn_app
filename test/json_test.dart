import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

import 'package:hn_app/src/article.dart';

void main() {
  test("parses topstories.json", () {
    const jsonString =
        "[ 24601579, 24603926, 24599642, 24602264, 24604335, 24601479, 24604368, 24604061, 24599440, 24599837, 24599269, 24588225, 24596489, 24600060, 24601375, 24601877, 24599560, 24603053, 24598281, 24598923, 24601692, 24598821, 24596680, 24597925, 24599679, 24601981, 24600978, 24601971, 24587101, 24600292, 24601385, 24598174, 24597951, 24601457, 24598154, 24602956, 24603170, 24598785, 24597748, 24600824, 24599434, 24600310, 24599711, 24599717, 24598904, 24604387, 24600684, 24600928, 24598464, 24603618, 24602741, 24595192, 24599397, 24600742, 24604078, 24598202, 24599739, 24598144, 24602722, 24593925, 24600263, 24601009, 24599694, 24590174, 24600498, 24592299, 24586708, 24599591, 24604216, 24598044, 24593093, 24595924, 24598302, 24598041, 24588067, 24603476, 24601298, 24588655, 24599307, 24597413, 24596769, 24603239, 24602449, 24590401, 24596924, 24593028, 24602363, 24582351, 24604093, 24603302, 24599116, 24583314, 24598261, 24593616, 24596248, 24601181, 24603538, 24588379, 24592568, 24599959, 24588899, 24590220, 24602800, 24593343, 24591216, 24590765, 24587033, 24601228, 24579699, 24595868, 24587143, 24590834, 24577738, 24591595, 24603999, 24600889, 24591422, 24603173, 24599026, 24598902, 24588856, 24601567, 24600247, 24592110, 24586390, 24588853, 24587083, 24588442, 24585986, 24581810, 24601083, 24601219, 24594833, 24598305, 24598361, 24588453, 24585705, 24592250, 24589145, 24590896, 24597623, 24583012, 24603619, 24602640, 24602225, 24593465, 24590499, 24591131, 24579905, 24593570, 24587923, 24586455, 24588816, 24602837, 24601802, 24602684, 24586831, 24591748, 24597347, 24581799, 24583109, 24577468, 24591454, 24601209, 24580879, 24589597, 24591680, 24588523, 24590685, 24577522, 24579539, 24581360, 24599357, 24602705, 24579761, 24576991, 24598253, 24586239, 24598852, 24597157, 24595164, 24594663, 24582837, 24592390, 24581986, 24584159, 24579777, 24583385, 24602872, 24596793, 24576903, 24584400, 24601899, 24598298, 24577642, 24602702, 24596027, 24587934, 24588913, 24589261, 24586754, 24601227, 24597461, 24602556, 24577565, 24590487, 24597365, 24593719, 24586436, 24590771, 24579284, 24600397, 24586556, 24578953, 24590820, 24602067, 24597442, 24580453, 24577239, 24585478, 24583512, 24585647, 24588947, 24596640, 24593123, 24593068, 24601706, 24599793, 24596034, 24576865, 24587642, 24579312, 24579088, 24596211, 24596587, 24593074, 24580479, 24578166, 24599984, 24578992, 24596032, 24584399, 24600870, 24580455, 24588832, 24578690, 24590359, 24600623, 24578970, 24595026, 24592730, 24577609, 24593694, 24593776, 24591407, 24577947, 24602423, 24577538, 24594374, 24598599, 24577100, 24577876, 24593738, 24585383, 24583798, 24589406, 24578033, 24578603, 24579206, 24596474, 24591986, 24582273, 24578518, 24581674, 24588056, 24589842, 24579874, 24578943, 24585029, 24579498, 24587206, 24597104, 24588835, 24591575, 24583668, 24579111, 24581577, 24595927, 24586386, 24599749, 24581237, 24586026, 24587328, 24577151, 24580370, 24596070, 24578749, 24601582, 24579209, 24597766, 24586991, 24595934, 24577069, 24583089, 24577881, 24582770, 24582760, 24590844, 24586613, 24595222, 24591952, 24580366, 24589474, 24586043, 24585271, 24577995, 24578053, 24578584, 24582975, 24588795, 24596699, 24583952, 24583868, 24590589, 24580829, 24592884, 24584693, 24582743, 24581514, 24582482, 24582385, 24599283, 24596300, 24588099, 24599551, 24596226, 24580748, 24593832, 24586142, 24580943, 24591418, 24582669, 24595561, 24577853, 24583848, 24587759, 24595309, 24577343, 24592032, 24579894, 24595030, 24588561, 24585393, 24586637, 24586033, 24580028, 24586169, 24581428, 24578686, 24581368, 24581343, 24585923, 24580234, 24587153, 24583025, 24593006, 24587473, 24587307, 24592289, 24588275, 24591823, 24599137, 24587842, 24583038, 24592036, 24591109, 24585354, 24585275, 24581295, 24584964, 24587133, 24579931, 24594208, 24583715, 24581269, 24586296, 24582306, 24583956, 24583833, 24577643, 24577576, 24577491, 24581321, 24582847, 24591612, 24584245, 24596120, 24577581, 24578951, 24577342, 24590477, 24581692, 24581525, 24581322, 24581283, 24586512, 24580010, 24579164, 24585553, 24585056, 24577602, 24584591, 24583984, 24582942, 24582904, 24581545, 24577218, 24580908, 24580831, 24578805, 24587119, 24577582, 24589417, 24583039, 24578928, 24591261, 24577890, 24582840, 24582800, 24588920, 24578751, 24577319, 24584619, 24595717, 24584748, 24601836, 24587055, 24604564 ]";

    expect(parseTopStories(jsonString).first, 24601579);
  });

  test("parses article.json", () {
    const jsonString =
        """{"by":"dhouston","descendants":71,"id":8863,"kids":[9224,8917,8952,8958,8884,8887,8869,8940,8908,9005,8873,9671,9067,9055,8865,8881,8872,8955,10403,8903,8928,9125,8998,8901,8902,8907,8894,8870,8878,8980,8934,8943,8876],"score":104,"time":1175714200,"title":"My YC app: Dropbox - Throw away your USB drive","type":"story","url":"http://www.getdropbox.com/u/2/screencast.html"}""";

    expect(parseArticle(jsonString).by, "dhouston");
  });

  test("parses article.json over a network", () async {
    final url = 'https://hacker-news.firebaseio.com/v0/beststories.json';
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final idList = json.decode(response.body);
      if (idList.isNotEmpty) {
        final storyUrl =
            'https://hacker-news.firebaseio.com/v0/item/${idList.first}.json';
        final storyResponse = await http.get(storyUrl);
        if (storyResponse.statusCode == 200) {
          expect(parseArticle(storyResponse.body).by, "poorman");
        }
      }
    }
  });
}
