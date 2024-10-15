import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper/data/bloc/GetBloc/wallpaper_event.dart';
import 'package:wallpaper/data/bloc/GetBloc/wallpaper_state.dart';
import 'package:wallpaper/model/wallPaper_model.dart';
import 'package:wallpaper/repository/wallpaper_repository.dart';

class WallPaperBloc extends Bloc<WallPaperEvent,WallPaperState>
{
  WallPaperRepository wallPaperRepository;
  WallPaperBloc({required this.wallPaperRepository}):super(WallInitialState()){
    on<GetWallPaperEvent>((event,emit)async{
      emit(WallLoadingState());
         try{
          var data = await wallPaperRepository.getTrendingWallPaper();
          var mData = WallPaperDataModel.fromJson(data);
          emit(WallLoadedState(Photos: mData.photos!));
         }
         catch(e){
           emit(WallErrorState(errorMsg: e.toString()));
         }

    });
  }
}