import 'package:wallpaper/data/remote/api_helper.dart';
import 'package:wallpaper/data/remote/urls.dart';

class WallPaperRepository
{
  ApiHelper apiHelper;
  WallPaperRepository({required this.apiHelper});

  Future<dynamic> getTrendingWallPaper()
  async{
    try {
     return await apiHelper.getApi(url: Urls.Trending_Wall_Url,);
    }catch(e){
      throw(e);
      //rethrow;
    }
  }


  Future<dynamic>searchWallPaper({required String query})
  async{
    try{
      return await apiHelper.getApi(url: "${Urls.Search_Url}?query=$query");
    }catch(e){
      throw(e);
    }

  }
}