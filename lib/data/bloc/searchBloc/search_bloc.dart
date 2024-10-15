import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper/data/bloc/searchBloc/search_event.dart';
import 'package:wallpaper/data/bloc/searchBloc/search_state.dart';
import 'package:wallpaper/model/wallPaper_model.dart';
import 'package:wallpaper/repository/wallpaper_repository.dart';

class SearchBloc extends Bloc<SearchEvent,SearchState>
{
  WallPaperRepository wallPaperRepository;
  SearchBloc({required this.wallPaperRepository}):super(SearchInitialState()){
    on<WallSearchEvent>((event,emit)async{
      emit(SearchLoadingState());
          try{
            var data  =await wallPaperRepository.searchWallPaper(query: event.query);
            var WallPaperModel =  WallPaperDataModel.fromJson(data);
            emit(SearchLoadedState(photos: WallPaperModel.photos!));
          }catch(e){
            emit(SearchErrorState(ErrorMsg: e.toString()));

          }
    });
  }
}