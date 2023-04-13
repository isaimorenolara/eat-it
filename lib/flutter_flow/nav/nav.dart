import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '../../backend/backend.dart';

import '../../auth/firebase_user_provider.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  EatItFirebaseUser? initialUser;
  EatItFirebaseUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(EatItFirebaseUser newUser) {
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    if (notifyOnAuthChange) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) =>
          appStateNotifier.loggedIn ? NavBarPage() : HomePageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : HomePageWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => HomePageWidget(),
        ),
        FFRoute(
          name: 'Crea_Perfil',
          path: '/creaPerfil',
          builder: (context, params) => CreaPerfilWidget(),
        ),
        FFRoute(
          name: 'platillos_plan_screen',
          path: '/platillosPlanScreen',
          builder: (context, params) => PlatillosPlanScreenWidget(
            currentPlan: params.getParam('currentPlan',
                ParamType.DocumentReference, false, ['planAlimenticio']),
            tiempo: params.getParam('tiempo', ParamType.String),
            comida: params.getParam('comida', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'plan_inscribe_screen',
          path: '/planInscribeScreen',
          builder: (context, params) => PlanInscribeScreenWidget(
            currentPlan: params.getParam('currentPlan',
                ParamType.DocumentReference, false, ['planAlimenticio']),
            usuarioref: params.getParam(
                'usuarioref', ParamType.DocumentReference, false, ['Usuario']),
          ),
        ),
        FFRoute(
          name: 'paciente_perfil_screen',
          path: '/pacientePerfilScreen',
          builder: (context, params) => PacientePerfilScreenWidget(),
        ),
        FFRoute(
          name: 'paciente_edita_perfil_screen',
          path: '/pacienteEditaPerfilScreen',
          builder: (context, params) => PacienteEditaPerfilScreenWidget(),
        ),
        FFRoute(
          name: 'InicioSesion',
          path: '/inicioSesion',
          builder: (context, params) => InicioSesionWidget(),
        ),
        FFRoute(
          name: 'logro_screen',
          path: '/logroScreen',
          builder: (context, params) => LogroScreenWidget(),
        ),
        FFRoute(
          name: 'elimina_platillos_screen',
          path: '/eliminaPlatillosScreen',
          builder: (context, params) => EliminaPlatillosScreenWidget(),
        ),
        FFRoute(
          name: 'edita_platillos_screen',
          path: '/editaPlatillosScreen',
          builder: (context, params) => EditaPlatillosScreenWidget(
            currentPlan: params.getParam('currentPlan',
                ParamType.DocumentReference, false, ['planAlimenticio']),
          ),
        ),
        FFRoute(
          name: 'Nutri_perfil',
          path: '/nutriPerfil',
          builder: (context, params) => NutriPerfilWidget(),
        ),
        FFRoute(
          name: 'comida_nogusta_screen',
          path: '/comidaNogustaScreen',
          builder: (context, params) => ComidaNogustaScreenWidget(),
        ),
        FFRoute(
          name: 'agrega_platillos_screen',
          path: '/agregaPlatillosScreen',
          builder: (context, params) => AgregaPlatillosScreenWidget(),
        ),
        FFRoute(
          name: 'Registrar',
          path: '/registrar',
          builder: (context, params) => RegistrarWidget(),
        ),
        FFRoute(
          name: 'Pacienteconplan',
          path: '/pacienteconplan',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'Pacienteconplan')
              : NavBarPage(
                  initialPage: 'Pacienteconplan',
                  page: PacienteconplanWidget(),
                ),
        ),
        FFRoute(
          name: 'PlanIt',
          path: '/planIt',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'PlanIt')
              : NavBarPage(
                  initialPage: 'PlanIt',
                  page: PlanItWidget(
                    userreference: params.getParam('userreference',
                        ParamType.DocumentReference, false, ['Usuario']),
                  ),
                ),
        ),
        FFRoute(
          name: 'PacienteSinPlan',
          path: '/pacienteSinPlan',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: PacienteSinPlanWidget(),
          ),
        ),
        FFRoute(
          name: 'PlanItNutriologo',
          path: '/planItNutriologo',
          builder: (context, params) => PlanItNutriologoWidget(),
        ),
        FFRoute(
          name: 'Cualestumeta',
          path: '/cualestumeta',
          builder: (context, params) => CualestumetaWidget(),
        ),
        FFRoute(
          name: 'ValidandoPerfil',
          path: '/validandoPerfil',
          builder: (context, params) => ValidandoPerfilWidget(),
        ),
        FFRoute(
          name: 'Modal1',
          path: '/modal1',
          builder: (context, params) => Modal1Widget(),
        ),
        FFRoute(
          name: 'Modal2',
          path: '/modal2',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: Modal2Widget(),
          ),
        ),
        FFRoute(
          name: 'Modal3',
          path: '/modal3',
          builder: (context, params) => Modal3Widget(),
        ),
        FFRoute(
          name: 'Modal4',
          path: '/modal4',
          builder: (context, params) => Modal4Widget(),
        ),
        FFRoute(
          name: 'Modal5',
          path: '/modal5',
          builder: (context, params) => Modal5Widget(),
        ),
        FFRoute(
          name: 'cookit',
          path: '/cookit',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'cookit')
              : NavBarPage(
                  initialPage: 'cookit',
                  page: CookitWidget(),
                ),
        ),
        FFRoute(
          name: 'creaplan',
          path: '/creaplan',
          builder: (context, params) => CreaplanWidget(),
        ),
        FFRoute(
          name: 'Editarplan',
          path: '/editarplan',
          builder: (context, params) => EditarplanWidget(),
        ),
        FFRoute(
          name: 'getit',
          path: '/getit',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'getit')
              : NavBarPage(
                  initialPage: 'getit',
                  page: GetitWidget(),
                ),
        ),
        FFRoute(
          name: 'inicionutri',
          path: '/inicionutri',
          builder: (context, params) => InicionutriWidget(),
        ),
        FFRoute(
          name: 'Personasinscritas',
          path: '/personasinscritas',
          builder: (context, params) => PersonasinscritasWidget(),
        ),
        FFRoute(
          name: 'plan_nutri_propio',
          path: '/planNutriPropio',
          builder: (context, params) => PlanNutriPropioWidget(
            currentPlan: params.getParam('currentPlan',
                ParamType.DocumentReference, false, ['planAlimenticio']),
          ),
        ),
        FFRoute(
          name: 'Platillos_mes',
          path: '/platillosMes',
          builder: (context, params) => PlatillosMesWidget(),
        ),
        FFRoute(
          name: 'Paciente_perfil',
          path: '/pacientePerfil',
          builder: (context, params) => PacientePerfilWidget(),
        ),
        FFRoute(
          name: 'ine_pagina',
          path: '/inePagina',
          builder: (context, params) => InePaginaWidget(),
        ),
        FFRoute(
          name: 'Plan_nutri_otro',
          path: '/planNutriOtro',
          builder: (context, params) => PlanNutriOtroWidget(),
        ),
        FFRoute(
          name: 'spinin',
          path: '/spinin',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'spinin')
              : NavBarPage(
                  initialPage: 'spinin',
                  page: SpininWidget(),
                ),
        ),
        FFRoute(
          name: 'planinscrito',
          path: '/planinscrito',
          builder: (context, params) => PlaninscritoWidget(
            currentPlan: params.getParam('currentPlan',
                ParamType.DocumentReference, false, ['planAlimenticio']),
          ),
        ),
        FFRoute(
          name: 'edita_cheatmeal',
          path: '/editaCheatmeal',
          builder: (context, params) => EditaCheatmealWidget(),
        ),
        FFRoute(
          name: 'agrega_cheatmeal',
          path: '/agregaCheatmeal',
          builder: (context, params) => AgregaCheatmealWidget(),
        ),
        FFRoute(
          name: 'elimina_cheatmeal',
          path: '/eliminaCheatmeal',
          builder: (context, params) => EliminaCheatmealWidget(),
        ),
        FFRoute(
          name: 'edita_platexcl',
          path: '/editaPlatexcl',
          builder: (context, params) => EditaPlatexclWidget(),
        ),
        FFRoute(
          name: 'agrega_platexcl',
          path: '/agregaPlatexcl',
          builder: (context, params) => AgregaPlatexclWidget(),
        ),
        FFRoute(
          name: 'elimina_platexcl',
          path: '/eliminaPlatexcl',
          builder: (context, params) => EliminaPlatexclWidget(),
        ),
        FFRoute(
          name: 'EditarRetosSemanales',
          path: '/editarRetosSemanales',
          builder: (context, params) => EditarRetosSemanalesWidget(),
        ),
        FFRoute(
          name: 'Educateit',
          path: '/educateit',
          builder: (context, params) => EducateitWidget(),
        ),
        FFRoute(
          name: 'agregacheatmeal',
          path: '/agregacheatmeal',
          builder: (context, params) => AgregacheatmealWidget(),
        ),
        FFRoute(
          name: 'perfil_nutriologo',
          path: '/perfilNutriologo',
          builder: (context, params) => PerfilNutriologoWidget(),
        ),
        FFRoute(
          name: 'Aadirplatillo',
          path: '/aadirplatillo',
          asyncParams: {
            'ingredientee': getDoc(['platillos'], PlatillosRecord.serializer),
          },
          builder: (context, params) => AadirplatilloWidget(
            ingrediente: params.getParam('ingrediente',
                ParamType.DocumentReference, false, ['platillos']),
            ingredientee: params.getParam('ingredientee', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'Modal6',
          path: '/modal6',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: Modal6Widget(),
          ),
        ),
        FFRoute(
          name: 'platilloanadido',
          path: '/platilloanadido',
          asyncParams: {
            'currentPlatillo':
                getDoc(['platillos'], PlatillosRecord.serializer),
          },
          builder: (context, params) => PlatilloanadidoWidget(
            currentPlatillo:
                params.getParam('currentPlatillo', ParamType.Document),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (GoRouter.of(this).routerDelegate.matches.length <= 1) {
      go('/');
    } else {
      pop();
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState =>
      (routerDelegate.refreshListenable as AppStateNotifier);
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      (routerDelegate.refreshListenable as AppStateNotifier)
          .updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList, collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/homePage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
