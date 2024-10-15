abstract class SearchEvent{}
class WallSearchEvent extends SearchEvent{
  String query;
  WallSearchEvent({required this.query});
}