import 'package:flutter/material.dart'
    show ChangeNotifier, Color, Colors, VoidCallback;
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _name = 'Jhon Deo';
  String get name => _name;
  set name(String value) {
    _name = value;
  }

  String _avatar =
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/0xnnmybw2a09/Avatar-23.jpeg';
  String get avatar => _avatar;
  set avatar(String value) {
    _avatar = value;
  }

  String _pageSelector = 'Home';
  String get pageSelector => _pageSelector;
  set pageSelector(String value) {
    _pageSelector = value;
  }

  AppInfoStruct _AppDetails = AppInfoStruct.fromSerializableMap(jsonDecode(
      '{\"logo\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/saygaq3eq0yx/shoping-logo-initial-h-premium-vector_316501-236-removebg-preview_1.svg\",\"title\":\"CityMarket Business\"}'));
  AppInfoStruct get AppDetails => _AppDetails;
  set AppDetails(AppInfoStruct value) {
    _AppDetails = value;
  }

  void updateAppDetailsStruct(Function(AppInfoStruct) updateFn) {
    updateFn(_AppDetails);
  }

  List<PaymentMethodStruct> _paymentMethods = [
    PaymentMethodStruct.fromSerializableMap(jsonDecode(
        '{\"category\":\"Bank Transfer\",\"name\":\"Bank of Ameria\",\"logo\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plantz-easfbn/assets/vyb3uavreh68/Bank_of_America_svg.svg\"}')),
    PaymentMethodStruct.fromSerializableMap(jsonDecode(
        '{\"category\":\"Bank Transfer\",\"name\":\"Citibank\",\"logo\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plantz-easfbn/assets/emdheoop4703/Citi_svg.svg\"}')),
    PaymentMethodStruct.fromSerializableMap(jsonDecode(
        '{\"category\":\"Bank Transfer\",\"name\":\"Barclays\",\"logo\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plantz-easfbn/assets/hnwi6fmmb1q6/Barclays_svg.svg\"}')),
    PaymentMethodStruct.fromSerializableMap(jsonDecode(
        '{\"category\":\"Bank Transfer\",\"name\":\"UBS\",\"logo\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plantz-easfbn/assets/rm8culsaawio/UBS_svg.svg\"}')),
    PaymentMethodStruct.fromSerializableMap(jsonDecode(
        '{\"category\":\"Credit/Debit Card\",\"name\":\"Visa\",\"logo\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plantz-easfbn/assets/v0un750wtmuc/Visa_Inc._svg.svg\"}')),
    PaymentMethodStruct.fromSerializableMap(jsonDecode(
        '{\"category\":\"Credit/Debit Card\",\"name\":\"Master\",\"logo\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plantz-easfbn/assets/wmd29f1v0yq7/Mastercard_svg.svg\"}')),
    PaymentMethodStruct.fromSerializableMap(jsonDecode(
        '{\"category\":\"E-wallet\",\"name\":\"AmazonPay\",\"logo\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/basket-plus-2cwvsj/assets/lwkqv1lxpa46/amazonpay-logo.png\"}')),
    PaymentMethodStruct.fromSerializableMap(jsonDecode(
        '{\"category\":\"E-wallet\",\"name\":\"PayPal\",\"logo\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/plantz-easfbn/assets/x8cb8dlp3hs4/logos_paypal.svg\"}'))
  ];
  List<PaymentMethodStruct> get paymentMethods => _paymentMethods;
  set paymentMethods(List<PaymentMethodStruct> value) {
    _paymentMethods = value;
  }

  void addToPaymentMethods(PaymentMethodStruct value) {
    paymentMethods.add(value);
  }

  void removeFromPaymentMethods(PaymentMethodStruct value) {
    paymentMethods.remove(value);
  }

  void removeAtIndexFromPaymentMethods(int index) {
    paymentMethods.removeAt(index);
  }

  void updatePaymentMethodsAtIndex(
    int index,
    PaymentMethodStruct Function(PaymentMethodStruct) updateFn,
  ) {
    paymentMethods[index] = updateFn(_paymentMethods[index]);
  }

  void insertAtIndexInPaymentMethods(int index, PaymentMethodStruct value) {
    paymentMethods.insert(index, value);
  }

  List<LangaugeStruct> _appLanguages = [
    LangaugeStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Arabic\",\"lang_code\":\"ar\",\"country_flag\":\"https://flagcdn.com/h80/sa.png\"}')),
    LangaugeStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"বাংলা\",\"lang_code\":\"bn\",\"country_flag\":\"https://flagcdn.com/h80/bd.png\"}')),
    LangaugeStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"English\",\"lang_code\":\"en\",\"country_flag\":\"https://flagcdn.com/h80/us.png\"}')),
    LangaugeStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Español\",\"lang_code\":\"es\",\"country_flag\":\"https://flagcdn.com/h80/es.png\"}')),
    LangaugeStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Français\",\"lang_code\":\"fr\",\"country_flag\":\"https://flagcdn.com/h80/fr.png\"}')),
    LangaugeStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"हिन्दी\",\"lang_code\":\"hi\",\"country_flag\":\"https://flagcdn.com/h80/in.png\"}')),
    LangaugeStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Italiano\",\"lang_code\":\"it\",\"country_flag\":\"https://flagcdn.com/h80/it.png\"}')),
    LangaugeStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Nederlands\",\"lang_code\":\"nl\",\"country_flag\":\"https://flagcdn.com/h80/nl.png\"}')),
    LangaugeStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Türkiye\",\"lang_code\":\"tr\",\"country_flag\":\"https://flagcdn.com/h80/tr.png\"}')),
    LangaugeStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Russian\",\"lang_code\":\"ru\",\"country_flag\":\"https://flagcdn.com/h80/ru.png\"}'))
  ];
  List<LangaugeStruct> get appLanguages => _appLanguages;
  set appLanguages(List<LangaugeStruct> value) {
    _appLanguages = value;
  }

  void addToAppLanguages(LangaugeStruct value) {
    appLanguages.add(value);
  }

  void removeFromAppLanguages(LangaugeStruct value) {
    appLanguages.remove(value);
  }

  void removeAtIndexFromAppLanguages(int index) {
    appLanguages.removeAt(index);
  }

  void updateAppLanguagesAtIndex(
    int index,
    LangaugeStruct Function(LangaugeStruct) updateFn,
  ) {
    appLanguages[index] = updateFn(_appLanguages[index]);
  }

  void insertAtIndexInAppLanguages(int index, LangaugeStruct value) {
    appLanguages.insert(index, value);
  }

  dynamic _selectedCountry = jsonDecode(
      '{\"country\":\"India\",\"dialCode\":\"+91\",\"flag\":\"https://flagcdn.com/h80/in.png\"}');
  dynamic get selectedCountry => _selectedCountry;
  set selectedCountry(dynamic value) {
    _selectedCountry = value;
  }

  bool _userOnboarded = false;
  bool get userOnboarded => _userOnboarded;
  set userOnboarded(bool value) {
    _userOnboarded = value;
  }

  String _darkMood = 'Dark';
  String get darkMood => _darkMood;
  set darkMood(String value) {
    _darkMood = value;
  }

  List<TemplatesStruct> _Templates = [
    TemplatesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/l61d1z2hver4/clean-modern-resume-portfolio-cv-template_120329-3609.jpg\",\"title\":\"Hello World\",\"subtitle\":\"Hello World\",\"color\":\"#a78cfb\"}')),
    TemplatesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/r1zlfhy1qd4v/vector-minimalist-cv-template-with-photo-space_1049579-133.jpg\",\"title\":\"Hello World\",\"subtitle\":\"Hello World\",\"color\":\"#fb8ce3\"}')),
    TemplatesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/kxog6wxe1oby/modern-creative-resume-cv-template_345927-129.jpg\",\"title\":\"Hello World\",\"subtitle\":\"Hello World\",\"color\":\"#8cfbf2\"}')),
    TemplatesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/4g501ja1wwqw/resume_1435-922.jpg\",\"title\":\"Hello World\",\"subtitle\":\"Hello World\",\"color\":\"#8cfbbf\"}')),
    TemplatesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/6nyo5fl8ag74/creative-modern-resume-template-design_78815-181.jpg\",\"title\":\"Hello World\",\"subtitle\":\"Hello World\",\"color\":\"#eefb8c\"}')),
    TemplatesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/g8b2ok23cvms/gradient-press-kit-template_23-2149849845.jpg\",\"title\":\"Hello World\",\"subtitle\":\"Hello World\",\"color\":\"#fb8ca8\"}')),
    TemplatesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/ghkzuiybr6js/modern-simple-template-curriculum_1435-1092.jpg\",\"title\":\"Hello World\",\"subtitle\":\"Hello World\",\"color\":\"#fbad8c\"}')),
    TemplatesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/s0opqec55y5q/minimalist-cv-template_23-2148913177.jpg\",\"title\":\"Hello World\",\"subtitle\":\"Hello World\",\"color\":\"#8cfba3\"}')),
    TemplatesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/rl2c1v45uoqu/resume-cv-template_237398-26.jpg\",\"title\":\"Hello World\",\"subtitle\":\"Hello World\",\"color\":\"#fb8cd1\"}')),
    TemplatesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/rc51h7d6vtoh/minimalist-cv-template_23-2148915085.jpg\",\"title\":\"Hello World\",\"subtitle\":\"Hello World\",\"color\":\"#8caffb\"}')),
    TemplatesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/6fmedz30drbt/minimalist-cv-templates_23-2148960548.jpg\",\"title\":\"Hello World\",\"subtitle\":\"Hello World\",\"color\":\"#8cfbf5\"}')),
    TemplatesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/ggh0y8rt76sb/professional-resume-cv-template-design_1205510-43.jpg\",\"title\":\"Hello World\",\"subtitle\":\"Hello World\",\"color\":\"#d5fb8c\"}')),
    TemplatesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/m3tdjlqmgbu4/flat-design-cv-template_23-2151059861.jpg\",\"title\":\"Hello World\",\"subtitle\":\"Hello World\",\"color\":\"#fbe68c\"}')),
    TemplatesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/7d4fs0pqgsau/resume_1435-853.jpg\",\"title\":\"Hello World\",\"subtitle\":\"Hello World\",\"color\":\"#e78cfb\"}')),
    TemplatesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/fwhm6x3okbpv/professional-modern-minimal-resume-cv-template_501970-152.jpg\",\"title\":\"Hello World\",\"subtitle\":\"Hello World\",\"color\":\"#c98cfb\"}')),
    TemplatesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/q3sjwmm1u8b5/professional-modern-resume-template-design_345927-24.jpg\",\"title\":\"Hello World\",\"subtitle\":\"Hello World\",\"color\":\"#fb8c9b\"}')),
    TemplatesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/6zlwaer3vokv/curriculum-template_1435-600.jpg\",\"title\":\"Hello World\",\"subtitle\":\"Hello World\",\"color\":\"#8cfbaa\"}')),
    TemplatesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/zf8xwlq03q3m/clean-modern-resume-portfolio-cv-template_112021-36.jpg\",\"title\":\"Hello World\",\"subtitle\":\"Hello World\",\"color\":\"#d88cfb\"}')),
    TemplatesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/00pxjg0f8lfy/clean-modern-resume-portfolio-cv-template_112021-37.jpg\",\"title\":\"Hello World\",\"subtitle\":\"Hello World\",\"color\":\"#8cc6fb\"}')),
    TemplatesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/toha76wyho5h/clean-modern-resume-cv-template-design_502601-236.jpg\",\"title\":\"Hello World\",\"subtitle\":\"Hello World\",\"color\":\"#8cfbde\"}')),
    TemplatesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/zujfv0yvojar/creative-modern-resume-cv-template_536581-3.jpg\",\"title\":\"Hello World\",\"subtitle\":\"Hello World\",\"color\":\"#fbcf8c\"}')),
    TemplatesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/lqtwjxydc713/business-card-icon-collection_755207-87.jpg\",\"title\":\"Hello World\",\"subtitle\":\"Hello World\",\"color\":\"#c18cfb\"}')),
    TemplatesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/q6zh2yc5urb0/blue-curriculum-vitae-template_23-2148812835.jpg\",\"title\":\"Hello World\",\"subtitle\":\"Hello World\",\"color\":\"#988cfb\"}')),
    TemplatesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/zyt3lo61muut/white-cv-template-with-grey-details_1435-1593.jpg\",\"title\":\"Hello World\",\"subtitle\":\"Hello World\",\"color\":\"#8cfbc1\"}')),
    TemplatesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/w5o9nzq5t8uc/Modern-Resume-728x1024.jpg\",\"title\":\"Hello World\",\"subtitle\":\"Hello World\",\"color\":\"#fbd28c\"}'))
  ];
  List<TemplatesStruct> get Templates => _Templates;
  set Templates(List<TemplatesStruct> value) {
    _Templates = value;
  }

  void addToTemplates(TemplatesStruct value) {
    Templates.add(value);
  }

  void removeFromTemplates(TemplatesStruct value) {
    Templates.remove(value);
  }

  void removeAtIndexFromTemplates(int index) {
    Templates.removeAt(index);
  }

  void updateTemplatesAtIndex(
    int index,
    TemplatesStruct Function(TemplatesStruct) updateFn,
  ) {
    Templates[index] = updateFn(_Templates[index]);
  }

  void insertAtIndexInTemplates(int index, TemplatesStruct value) {
    Templates.insert(index, value);
  }

  List<CategoriesStruct> _categories = [
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/p3zniyilh6tw/Fruits.png\",\"title\":\"Fruits\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/kvlkg0l31kgj/Veggies.png\",\"title\":\"Veggies\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/qkk3wuw8mwi0/Meats.png\",\"title\":\"Meats\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/m6ilr2trd8x7/Seafood.png\",\"title\":\"Seafood\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/u4w85maa94fn/Dairy_%26_Eggs.png\",\"title\":\"Dairy & Eggs\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/54dfog1a0jdz/Bakery.png\",\"title\":\"Bakery\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/3qfxzgjymsqa/Pantry.png\",\"title\":\"Pantry\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/yswjchc775vr/Beverages.png\",\"title\":\"Beverages\"}')),
    CategoriesStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/r4v3v4ihjuef/Snacks.png\",\"title\":\"Snacks\"}'))
  ];
  List<CategoriesStruct> get categories => _categories;
  set categories(List<CategoriesStruct> value) {
    _categories = value;
  }

  void addToCategories(CategoriesStruct value) {
    categories.add(value);
  }

  void removeFromCategories(CategoriesStruct value) {
    categories.remove(value);
  }

  void removeAtIndexFromCategories(int index) {
    categories.removeAt(index);
  }

  void updateCategoriesAtIndex(
    int index,
    CategoriesStruct Function(CategoriesStruct) updateFn,
  ) {
    categories[index] = updateFn(_categories[index]);
  }

  void insertAtIndexInCategories(int index, CategoriesStruct value) {
    categories.insert(index, value);
  }

  String _LocaationSelected = '';
  String get LocaationSelected => _LocaationSelected;
  set LocaationSelected(String value) {
    _LocaationSelected = value;
  }

  List<VegetablesList1Struct> _vegetablesList1 = [
    VegetablesList1Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/js31tsa4pk9q/Rectangle_126-7-removebg-preview.png\",\"name\":\"Organic lemon\",\"quantity\":\"4 Pic\",\"price\":\"\$1.22\"}')),
    VegetablesList1Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/w71mzb0h705m/Rectangle_126-removebg-preview.png\",\"name\":\"Mango\",\"quantity\":\"1 kg\",\"price\":\"\$5.99\"}')),
    VegetablesList1Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/cqgdfhhekr8p/Rectangle_126-6-removebg-preview.png\",\"name\":\"Fresh raw beef\",\"quantity\":\"2 Kg\",\"price\":\"\$19.02\"}')),
    VegetablesList1Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/zb2mski5wvd5/Rectangle_126-4-removebg-preview.png\",\"name\":\"Fresh banana\",\"quantity\":\"8 pic\",\"price\":\"\$2.99\"}')),
    VegetablesList1Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/2nk70r9coqev/Rectangle_152-removebg-preview.png\",\"name\":\"Organic lemone fruits\",\"quantity\":\"4 Pic\",\"price\":\"\$1.22\"}')),
    VegetablesList1Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/s9hpcalrh8o0/Rectangle_126-5-removebg-preview.png\",\"name\":\"Fresh apple\",\"quantity\":\"1 kg\",\"price\":\"\$4.99\"}')),
    VegetablesList1Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/0p2muhaq1ot0/Rectangle_126-1-removebg-preview.png\",\"name\":\"Avocado\",\"quantity\":\"1 kg\",\"price\":\"\$14.00\"}')),
    VegetablesList1Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/qczz1s0dl8x7/Rectangle_126-2-removebg-preview.png\",\"name\":\"Raw seabass fish\",\"quantity\":\"1 Pic\",\"price\":\"\$14.00\"}')),
    VegetablesList1Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/0wkoay90c13s/Rectangle_152-1-removebg-preview.png\",\"name\":\"Pineapple\",\"quantity\":\"8 pic\",\"price\":\"\$3.00\"}')),
    VegetablesList1Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/8yuotlszixk0/Rectangle_126-3-removebg-preview.png\",\"name\":\"Fresh orange juice\",\"quantity\":\"1 L\",\"price\":\"\$10.06\"}'))
  ];
  List<VegetablesList1Struct> get vegetablesList1 => _vegetablesList1;
  set vegetablesList1(List<VegetablesList1Struct> value) {
    _vegetablesList1 = value;
  }

  void addToVegetablesList1(VegetablesList1Struct value) {
    vegetablesList1.add(value);
  }

  void removeFromVegetablesList1(VegetablesList1Struct value) {
    vegetablesList1.remove(value);
  }

  void removeAtIndexFromVegetablesList1(int index) {
    vegetablesList1.removeAt(index);
  }

  void updateVegetablesList1AtIndex(
    int index,
    VegetablesList1Struct Function(VegetablesList1Struct) updateFn,
  ) {
    vegetablesList1[index] = updateFn(_vegetablesList1[index]);
  }

  void insertAtIndexInVegetablesList1(int index, VegetablesList1Struct value) {
    vegetablesList1.insert(index, value);
  }

  List<VegetablesList2Struct> _vegetablesList2 = [
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/7kklg84tmvts/GroceryItems_(13).png\",\"name\":\"Cucumber\",\"quantity\":\"200 gm\",\"price\":\"\$2.49\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/i4ctnogabpm5/GroceryItems_(3).png\",\"name\":\"Strawberries\",\"quantity\":\"250 gm\",\"price\":\"\$2.29\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/tlqq0xnqhnpz/GroceryItems_(24).png\",\"name\":\"Ground Beef\",\"quantity\":\"500 gm\",\"price\":\"\$5.19\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/u2lyetv49l1n/GroceryItems_(4).png\",\"name\":\"Avocado\",\"quantity\":\"2 pcs\",\"price\":\"\$3.19\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/4frxo4c6sej7/GroceryItems_(7).png\",\"name\":\"Red Apples\",\"quantity\":\"500 gm\",\"price\":\"\$2.50\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/rq2x7qkqb3kr/GroceryItems_(10).png\",\"name\":\"Sweet Corn\",\"quantity\":\"200 gm\",\"price\":\"\$2.49\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/vikzlvust334/GroceryItems_(5).png\",\"name\":\"Dragon Fruit\",\"quantity\":\"1 pc\",\"price\":\"\$2.99\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/dniam63ck5zm/GroceryItems_(17).png\",\"name\":\"Garlic Baguette\",\"quantity\":\"1 pcs\",\"price\":\"\$3.29\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/48odfcmcoa0d/GroceryItems_(28).png\",\"name\":\"Blueberries\",\"quantity\":\"250 gm\",\"price\":\"\$3.59\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/q26ini7v1fdg/GroceryItems_(23).png\",\"name\":\"Chicken Wings\",\"quantity\":\"500 gm\",\"price\":\"\$4.29\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/8pmuzq8ygbmt/GroceryItems_(12).png\",\"name\":\"Leeks\",\"quantity\":\"300 gm\",\"price\":\"\$1.89\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/mcj8yr0hotni/GroceryItems_(14).png\",\"name\":\"Pumpkin Slice\",\"quantity\":\"300 gm\",\"price\":\"\$3.59\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/ptmqe4v3r0pv/GroceryItems_(6).png\",\"name\":\"Kiwi\",\"quantity\":\"3 pcs\",\"price\":\"\$2.79\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/2n7tnc8wpuwi/GroceryItems_(36).png\",\"name\":\"Whipping Cream\",\"quantity\":\"300 gm\",\"price\":\"\$2.99\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/vlfinjjuldzs/GroceryItems_(11).png\",\"name\":\"Eggplant\",\"quantity\":\"500 gm\",\"price\":\"\$2.09\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/r8txgl2xk4ur/GroceryItems_(25).png\",\"name\":\"Beef Sirloin\",\"quantity\":\"300 gm\",\"price\":\"\$6.49\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/nioltrv15uj0/GroceryItems_(20).png\",\"name\":\"Wheat Bread\",\"quantity\":\"1 loaf\",\"price\":\"\$2.99\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/4snm85j32im6/GroceryItems_(31).png\",\"name\":\"Mango\",\"quantity\":\"1 pcs\",\"price\":\"\$2.19\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/ab3klvmpjjuu/GroceryItems_(1).png\",\"name\":\"Bok Choy\",\"quantity\":\"250 gm\",\"price\":\"\$3.20\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/y3qqb9vudxf8/GroceryItems_(29).png\",\"name\":\"Pineapple\",\"quantity\":\"1 pcs\",\"price\":\"\$3.29\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/h6jqx4sr5upl/GroceryItems_(9).png\",\"name\":\"Croissant\",\"quantity\":\"2 pcs\",\"price\":\"\$3.49\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/rpsp554f0ypy/GroceryItems_(37).png\",\"name\":\"Mozzarella Cheese\",\"quantity\":\"250 gm\",\"price\":\"\$3.49\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/agppkuxksqs2/GroceryItems_(8).png\",\"name\":\"Oranges\",\"quantity\":\"1 kg\",\"price\":\"\$3.29\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/mfjb5sichgat/GroceryItems_(38).png\",\"name\":\"Greek Yogurt\",\"quantity\":\"200 gm\",\"price\":\"\$2.29\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/v0nzt2m2xs1p/GroceryItems_(22).png\",\"name\":\"Smoked Sausage\",\"quantity\":\"300 gm\",\"price\":\"\$3.99\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/pelbcj4yz9jr/GroceryItems_(18).png\",\"name\":\"Cinnamon Roll\",\"quantity\":\"2 pcs\",\"price\":\"\$3.19\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/hji4yzvlghac/GroceryItems_(34).png\",\"name\":\"Cottage Cheese\",\"quantity\":\"200 gm\",\"price\":\"\$2.59\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/v2aby3gsrd7k/GroceryItems_(32).png\",\"name\":\"Green Grapes\",\"quantity\":\"500 gm\",\"price\":\"\$3.49\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/01u8ipm6swxl/GroceryItems_(26).png\",\"name\":\"Chicken Breast\",\"quantity\":\"500 gm\",\"price\":\"\$4.89\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/n61hof4miiy9/GroceryItems_(2).png\",\"name\":\"Red Bell Pepper\",\"quantity\":\"250 gm\",\"price\":\"\$2.55\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/2a84yr3dwgco/GroceryItems_(33).png\",\"name\":\"Salted Butter\",\"quantity\":\"250 gm\",\"price\":\"\$2.69\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/vqhy3l91ekh5/GroceryItems_(30).png\",\"name\":\"Papaya\",\"quantity\":\"1 pcs\",\"price\":\"\$2.79\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/7vln1uuj3gp5/GroceryItems_(35).png\",\"name\":\"Chocolate Milk\",\"quantity\":\"250 gm\",\"price\":\"\$1.89\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/bx0la7p2ynev/GroceryItems_(19).png\",\"name\":\"Chocolate Muffin\",\"quantity\":\"2 pcs\",\"price\":\"\$2.59\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/lhyitv8dlhb5/GroceryItems_(27).png\",\"name\":\"Watermelon Slice\",\"quantity\":\"400 gm\",\"price\":\"\$2.40\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/i1cpyma4nhy4/GroceryItems_(21).png\",\"name\":\"Lamb Chops\",\"quantity\":\"400 gm\",\"price\":\"\$6.79\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/l787qlow7jje/GroceryItems_(16).png\",\"name\":\"Banana Bread\",\"quantity\":\"1 slices\",\"price\":\"\$2.49\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/dntlqyxpdmk9/GroceryItems_(15).png\",\"name\":\"Kale Leaves\",\"quantity\":\"250 gm\",\"price\":\"\$1.99\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/p86svkk2yohi/GroceryItems39_(2).png\",\"name\":\"Bananas\",\"quantity\":\"1 Dozen\",\"price\":\"\$2.99\"}')),
    VegetablesList2Struct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/assets-3ajpcu/assets/ck1b6o1cv1ee/GroceryItems39_(1).png\",\"name\":\"Grapes\",\"quantity\":\"500 gm\",\"price\":\"\$3.39\"}'))
  ];
  List<VegetablesList2Struct> get vegetablesList2 => _vegetablesList2;
  set vegetablesList2(List<VegetablesList2Struct> value) {
    _vegetablesList2 = value;
  }

  void addToVegetablesList2(VegetablesList2Struct value) {
    vegetablesList2.add(value);
  }

  void removeFromVegetablesList2(VegetablesList2Struct value) {
    vegetablesList2.remove(value);
  }

  void removeAtIndexFromVegetablesList2(int index) {
    vegetablesList2.removeAt(index);
  }

  void updateVegetablesList2AtIndex(
    int index,
    VegetablesList2Struct Function(VegetablesList2Struct) updateFn,
  ) {
    vegetablesList2[index] = updateFn(_vegetablesList2[index]);
  }

  void insertAtIndexInVegetablesList2(int index, VegetablesList2Struct value) {
    vegetablesList2.insert(index, value);
  }
}
