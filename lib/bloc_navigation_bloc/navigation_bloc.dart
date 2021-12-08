import 'package:bloc/bloc.dart';
import 'package:sri_help/pages/my_calendar.dart';
import 'package:sri_help/pages/my_chart.dart';
import 'package:sri_help/pages/kch_fm.dart';
import 'package:sri_help/pages/my_sales_month.dart';
import 'package:sri_help/pages/my_shopping_month.dart';
import 'package:sri_help/pages/sri_access.dart';
// import 'package:sri_help/sidebar/menu_item.dart';
// import 'package:sri_help/sidebar/sidebar.dart';
// import 'package:sri_help/sidebar/sidebar_layout.dart';
import '../pages/home_page.dart';
import '../pages/my_account_homepage.dart';
import '../pages/my_sales_yr.dart';
import '../pages/my_shopping_yr.dart';
import '../pages/economy_news.dart';
import '../pages/sri_news.dart';

enum NavigationEvent {
  homePageClickedEvent,
  miCuentaClickedEvent,
  misVentasYrClickedEvent,
  misVentasMonthClickedEvent,
  misComprasYrClickedEvent,
  misComprasMonthClickedEvent,
  misNoticiasClickedEvent,
  miCalendarioClickedEvent,
  misGraficosClickedEvent,
  kChFmNewsClickedEvent,
  miSriAccessClickedEvent,
  miPostClickedEvent,
}

abstract class NavigationState {}

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc(NavigationState initialState) : super(initialState);

  //@Override
  NavigationState get initialState => MiCuenta();

  @override
  Stream<NavigationState> mapEventToState(NavigationEvent event) async* {
    switch (event) {
      case NavigationEvent.homePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvent.miCuentaClickedEvent:
        yield MiCuenta();
        break;
      case NavigationEvent.misNoticiasClickedEvent:
        yield const MisNoticias();
        break;
      case NavigationEvent.miCalendarioClickedEvent:
        yield const MiCalendario();
        break;
      case NavigationEvent.misVentasYrClickedEvent:
        yield MisVentasYr();
        break;
      case NavigationEvent.misGraficosClickedEvent:
        yield MisGraficos();
        break;
      case NavigationEvent.misComprasYrClickedEvent:
        yield MisComprasYr();
        break;
      case NavigationEvent.misVentasMonthClickedEvent:
        yield MisVentasMonth();
        break;
      case NavigationEvent.kChFmNewsClickedEvent:
        yield const KchFMNews();
        break;
      case NavigationEvent.misComprasMonthClickedEvent:
        yield MisComprasMonth();
        break;
      case NavigationEvent.miSriAccessClickedEvent:
        yield const SriAccessPage();
        break;
      case NavigationEvent.miPostClickedEvent:
        yield const PostPage();
        break;
    }
  }
}
