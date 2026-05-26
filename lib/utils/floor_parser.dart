import 'package:fixnum/fixnum.dart';
import '../generated/Agree.pb.dart';
import '../generated/PbContent.pb.dart';
import '../generated/SubPostList.pb.dart';
import '../generated/User.pb.dart' as usermodel;

/// JSON 楼中楼响应解析工具，与 `floor_reply_page.dart` 中的 `_subPostFromJson` 逻辑一致。
class FloorJsonParser {
  /// 将 JSON 子回复项转 SubPostList protobuf
  static SubPostList subPostFromJson(Map<String, dynamic> item) {
    final contentList =
        (item["content"] as List<dynamic>?)
            ?.map(
              (c) => PbContent(
                type: (c["type"] as num?)?.toInt() ?? 0,
                text: c["text"]?.toString() ?? '',
                src: c["src"]?.toString() ?? '',
                uid: Int64.parseInt(c["uid"]?.toString() ?? '0'),
              ),
            )
            .toList() ??
        [];
    final author = item["author"] as Map<String, dynamic>?;
    final agree = item["agree"] as Map<String, dynamic>?;
    return SubPostList(
      id: Int64.parseInt(item["id"]?.toString() ?? '0'),
      time: int.tryParse(item["time"]?.toString() ?? '0') ?? 0,
      content: contentList,
      authorId: Int64.parseInt(author?["id"]?.toString() ?? '0'),
      author: author != null
          ? usermodel.User(
              id: Int64.parseInt(author["id"]?.toString() ?? '0'),
              name: author["name"]?.toString() ?? '',
              nameShow: author["name_show"]?.toString() ?? '',
              portrait: author["portrait"]?.toString() ?? '',
              levelId: int.tryParse(author["level_id"]?.toString() ?? '0') ?? 0,
            )
          : null,
      agree: agree != null
          ? Agree(
              agreeNum: Int64.parseInt(agree["agree_num"]?.toString() ?? '0'),
              hasAgree:
                  int.tryParse(agree["has_agree"]?.toString() ?? '0') ?? 0,
            )
          : null,
    );
  }
}