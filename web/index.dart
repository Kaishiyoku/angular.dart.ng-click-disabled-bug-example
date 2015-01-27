import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';
import 'cmp/example/example.dart';

main() {
  applicationFactory()
    .addModule(new MainModule())
    .run();
}

class MainModule extends Module {
  MainModule() {
    install(new ExampleModule());
    bind(RouteInitializerFn, toValue: (Router router, RouteViewFactory views) {
      views.configure({
        'default': ngRoute(
          defaultRoute: true,
          viewHtml: '<example-ctrl></example-ctrl>'
        )
      });
    });
  }
}