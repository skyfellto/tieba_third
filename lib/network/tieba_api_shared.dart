part of 'tieba_api.dart';

const String _baseHost = "http://tiebac.baidu.com";
const String _loginUrl = "$_baseHost/c/s/login";
const String _clientVersion = "12.64.1.1";
final Logger _logger = Logger();

String? _syncClientId;
String? _syncSampleId;
const String _syncClientIdKey = 'sync_client_id';
const String _syncSampleIdKey = 'sync_sample_id';

const String _lastLikeTimeKey = 'last_like_time';

int get _likeCooldownMs => PersonalizationManager.likeCooldownMinutes * 60 * 1000;

String _s(dynamic v) => v?.toString() ?? '';

String _randomHex(int length) {
  const chars = '0123456789abcdef';
  return List.generate(length, (_) => chars[Random().nextInt(chars.length)]).join();
}

String _computeSign(List<List<String>> data) {
  data.sort((a, b) => a[0].compareTo(b[0]));
  final buf = StringBuffer();
  for (final pair in data) { buf.write("${pair[0]}=${pair[1]}"); }
  return md5.convert(utf8.encode("${buf.toString()}tiebaclient!!!")).toString();
}

Map<String, String> _searchHeaders(String? bduss) {
  return {
    "User-Agent": DeviceInfo().userAgent(_clientVersion),
    "X-Requested-With": "com.baidu.tieba",
    "Accept": "application/json, text/plain, */*",
    "Accept-Language": "zh-CN,zh;q=0.9",
    if (bduss != null && bduss.isNotEmpty) "Cookie": "BDUSS=$bduss",
  };
}

Future<void> _loadSyncData() async {
  final prefs = await SharedPreferences.getInstance();
  _syncClientId = prefs.getString(_syncClientIdKey);
  _syncSampleId = prefs.getString(_syncSampleIdKey);
  if (_syncSampleId != null && _syncSampleId!.isNotEmpty) {
    _logger.i("【sync加载】clientId=$_syncClientId sampleId=$_syncSampleId");
  }
}

Future<void> _saveSyncData(String clientId, String sampleId) async {
  _syncClientId = clientId;
  _syncSampleId = sampleId;
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString(_syncClientIdKey, clientId);
  await prefs.setString(_syncSampleIdKey, sampleId);
  _logger.i("【sync保存】clientId=$clientId sampleId=$sampleId");
}

Future<bool> _isLikeOnCooldown() async {
  final prefs = await SharedPreferences.getInstance();
  final last = prefs.getInt(_lastLikeTimeKey);
  if (last == null) return false;
  return DateTime.now().millisecondsSinceEpoch - last < _likeCooldownMs;
}

Future<void> _updateLastLikeTime() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setInt(_lastLikeTimeKey, DateTime.now().millisecondsSinceEpoch);
}