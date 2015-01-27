import 'package:angular/angular.dart';
import 'dart:html';

@Component(
    selector: 'example-ctrl',
    useShadowDom: false,
    templateUrl: '/ng_click_disabled_bug_example/web/cmp/example/example.html')
class ExampleController {
  bool isDisabled = true;
  int timesClicked = 0;
  String popoverText = "test";

  ExampleController();

  void clickFunction() {
    timesClicked++;

    print("button clicked");
  }

  void enableButton() {
    isDisabled = false;
    print("button enabled");
  }

  void disableButton() {
    isDisabled = true;
    print("button disabled");
  }
}

class ExampleModule extends Module {
  ExampleModule() {
    bind(ExampleController);
  }
}