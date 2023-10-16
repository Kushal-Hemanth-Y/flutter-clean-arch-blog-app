import 'package:velocity_x/velocity_x.dart';

import '../data_sources/remote/api_client.dart';
import '../data_sources/remote/api_endpoint_urls.dart';

class TagsRepo extends ApiClient {
  TagsRepo();
  getAllTags() async {
    try {
      final response = await getRequest(path: ApiEndPointUrls.tags);

      if (response.statusCode == 200) {
        Vx.log(response.data);
      }
    } on Exception catch (e) {
      Vx.log(e);
    }
  }
}
