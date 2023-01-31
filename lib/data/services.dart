import 'package:airtelmoney_ui/pages/nunua_salio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../pages/lipia_bill.dart';
import '../pages/nunua_bando.dart';
import '../pages/toa_pesa.dart';
import '../pages/tuma_pesa.dart';
import '../pages/vocha_kukwangua.dart';
import '../utils/colors.dart';
import '../utils/navigator.dart';

List<Map> services = [
  {
    "image": null,
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Tuma Pesa",
    "icon": Icon(Icons.offline_share_outlined, color: Colors.red, size: 30),
    "badge": false,
    "tap": () {
      NavigationService.instance.navigateToRoute(
          MaterialPageRoute(builder: (_) => const TumaPesaScreen()));
    }
  },
  {
    "image": null,
    "secondary": "assets/images/mpwa.png",
    "name": "Toa Pesa",
    "icon": Icon(Icons.upload_file_outlined, color: Colors.red, size: 30),
    "badge": false,
    "tap": () {
      NavigationService.instance.navigateToRoute(
          MaterialPageRoute(builder: (_) => const ToaPesaScreen()));
    }
  },
  {
    "image": null,
    "secondary": "assets/images/gepg.png",
    "name": "lipia Bili",
    "icon": Icon(Icons.sticky_note_2_outlined, color: Colors.red, size: 30),
    "badge": false,
    "tap": () {
      NavigationService.instance.navigateToRoute(
          MaterialPageRoute(builder: (_) => const LipiaBillScreen()));
    }
  },
  {
    "image": null,
    "secondary": "assets/images/captain.jpeg",
    "name": "Lipa Kwa simu",
    "icon": Icon(Icons.account_balance_outlined, color: Colors.red, size: 30),
    "badge": false
  },
  {
    "image": null,
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Nunua Bando",
    "icon": Icon(Icons.shopping_cart_outlined, color: Colors.red, size: 30),
    "badge": false,
    "tap": () {
      NavigationService.instance.navigateToRoute(
          MaterialPageRoute(builder: (_) => const NunuaBandoScreen()));
    }
  },
  {
    "image": null,
    "secondary": "assets/images/dstvlogo.jpeg",
    "icon": Icon(Icons.language_outlined, color: Colors.red, size: 30),
    "name": "Nunua Salio",
    "badge": false,
    "tap": () {
      NavigationService.instance.navigateToRoute(
          MaterialPageRoute(builder: (_) => const NunuaSalioScreen()));
    }
  },
  {
    "image": null,
    "secondary": "assets/images/dstvlogo.jpeg",
    "icon": Icon(Icons.handshake_outlined, color: Colors.red, size: 30),
    "name": "Vocha ya kukwangua",
    "badge": false,
    "tap": () {
      NavigationService.instance.navigateToRoute(
          MaterialPageRoute(builder: (_) => const VochaYaKuKwanguaScreen()));
    }
  },
  {
    "image": null,
    "secondary": "assets/images/dstvlogo.jpeg",
    "icon": Icon(Icons.handshake_outlined, color: Colors.red, size: 30),
    "name": "RUSHA SALIO",
    "badge": true
  },
];

List<Map> airtelMoneyservices = [
  {
    "image": null,
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Tuma Pesa",
    "icon": Icon(Icons.offline_share_outlined, color: Colors.red, size: 30),
    "badge": false,
    "tap": () {
      NavigationService.instance.navigateToRoute(
          MaterialPageRoute(builder: (_) => const TumaPesaScreen()));
    }
  },
  {
    "image": null,
    "secondary": "assets/images/mpwa.png",
    "name": "Toa Pesa",
    "icon": Icon(Icons.upload_file_outlined, color: Colors.red, size: 30),
    "badge": false,
    "tap": () {
      NavigationService.instance.navigateToRoute(
          MaterialPageRoute(builder: (_) => const ToaPesaScreen()));
    }
  },
  {
    "image": null,
    "secondary": "assets/images/gepg.png",
    "name": "lipia Bili",
    "icon": Icon(Icons.sticky_note_2_outlined, color: Colors.red, size: 30),
    "badge": false,
    "tap": () {
      NavigationService.instance.navigateToRoute(
          MaterialPageRoute(builder: (_) => const LipiaBillScreen()));
    }
  },
  {
    "image": null,
    "secondary": "assets/images/captain.jpeg",
    "name": "Rudisha Muamala",
    "icon": Icon(Icons.account_balance_outlined, color: Colors.red, size: 30),
    "badge": false
  },
  {
    "image": null,
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Lipa Kwa Simu",
    "icon": Icon(Icons.shopping_cart_outlined, color: Colors.red, size: 30),
    "badge": false,
    "tap": () {
      NavigationService.instance.navigateToRoute(
          MaterialPageRoute(builder: (_) => const NunuaBandoScreen()));
    }
  },
  {
    "image": null,
    "secondary": "assets/images/dstvlogo.jpeg",
    "icon": Icon(Icons.language_outlined, color: Colors.red, size: 30),
    "name": "Nunua Bando",
    "badge": false,
    "tap": () {
      NavigationService.instance.navigateToRoute(
          MaterialPageRoute(builder: (_) => const NunuaSalioScreen()));
    }
  },
  {
    "image": null,
    "secondary": "assets/images/dstvlogo.jpeg",
    "icon": Icon(Icons.handshake_outlined, color: Colors.red, size: 30),
    "name": "Nunua Salio",
    "badge": false,
    "tap": () {
      NavigationService.instance.navigateToRoute(
          MaterialPageRoute(builder: (_) => const VochaYaKuKwanguaScreen()));
    }
  },
  {
    "image": null,
    "secondary": "assets/images/dstvlogo.jpeg",
    "icon": Icon(Icons.handshake_outlined, color: Colors.red, size: 30),
    "name": "Hamisha Pesa",
    "badge": false
  },
];

List<Map> kwendaBenki = [
  {
    "name": "ACB",
    "icon": "assets/images/acb.png",
  },
  {
    "name": "ACTCALAMICRO FINANCE",
    "icon": "assets/images/amana.jpg",
  },
  {
    "name": "AKIBA COMMERCIAL BANK",
    "icon": "assets/images/acb.png",
  },
  {
    "name": "AMANA",
    "icon": "assets/images/amana.jpg",
  },
  {
    "name": "AZANIA",
    "icon": "assets/images/azania.png",
  },
  {
    "name": "Absa Bank",
    "icon": "assets/images/absa.jpg",
  }
];

List<Map> hudumaZaKifedha = [
  {"name": "visa", "icon": null, "image": "assets/images/visatigo.png"},
  {
    "name": "Mikopo",
    "icon":
        Icon(Icons.shopping_basket, color: AppColors.primaryColor, size: 50),
  },
  {
    "name": "Bima",
    "icon": Icon(Icons.groups, color: AppColors.primaryColor, size: 50),
    "image": null
  },
  {
    "name": "Akiba",
    "icon": Icon(Icons.takeout_dining, color: AppColors.primaryColor, size: 50),
    "image": null
  },
];

List<Map> zaidiItems = [
  {
    "name": "Setting",
    "icon":
        Icon(Icons.settings_outlined, color: AppColors.blueColor, size: 30.sp),
  },
  {
    "name": "Airtel Shops",
    "icon":
        Icon(Icons.shopping_basket, color: AppColors.blueColor, size: 30.sp),
  },
  {
    "name": "Help & Support",
    "icon":
        Icon(Icons.shopping_basket, color: AppColors.blueColor, size: 30.sp),
  },
  {
    "name": "Terms & Conditions",
    "icon":
        Icon(Icons.shopping_basket, color: AppColors.blueColor, size: 30.sp),
  },
  {
    "name": "About Us",
    "icon":
        Icon(Icons.shopping_basket, color: AppColors.blueColor, size: 30.sp),
  },
  {
    "name": "Share the app",
    "icon": Icon(Icons.share_outlined, color: AppColors.blueColor, size: 30.sp),
  },
  {
    "name": "Setting",
    "icon":
        Icon(Icons.shopping_basket, color: AppColors.blueColor, size: 30.sp),
  },
];

List<Map> lipiaBili = [
  {
    "name": "Hifadhi Kumbukumbu",
    "icon": Icon(Icons.shopping_basket, color: Colors.red, size: 45),
    "image": "assets/images/visatigo.png"
  },
  {
    "name": "Ingiza Namba ya Biashara",
    "icon": Icon(Icons.shopping_basket, color: Colors.red, size: 45),
  },
  {
    "name": "Chagua Biashara",
    "icon": Icon(Icons.shopping_basket, color: Colors.red, size: 45),
    "image": null
  },
  {
    "name": "Umeme Na Nishati",
    "icon": Icon(Icons.shopping_basket, color: Colors.red, size: 45),
    "image": null
  },
  {
    "name": "Maji (DAWASCO)",
    "icon": Icon(Icons.shopping_basket, color: Colors.red, size: 45),
    "image": null
  },
  {
    "name": "Pay Tv",
    "icon": Icon(Icons.shopping_basket, color: Colors.red, size: 45),
    "image": null
  },
  {
    "name": "Malipo Ya Serikali",
    "icon": Icon(Icons.shopping_basket, color: Colors.red, size: 45),
    "image": null
  },
  {
    "name": "Huduma za Elimu",
    "icon": Icon(Icons.shopping_basket, color: Colors.red, size: 45),
  },
  {
    "name": "School Fees",
    "icon": Icon(Icons.shopping_basket, color: Colors.red, size: 45),
    "image": null
  },
  {
    "name": "Usafiri wa Anga",
    "icon": Icon(Icons.shopping_basket, color: Colors.red, size: 45),
    "image": null
  },
  {
    "name": "Bahati na Sibu & Michezo",
    "icon": Icon(Icons.shopping_basket, color: Colors.red, size: 45),
    "image": null
  },
  {
    "name": "US Visa",
    "icon": Icon(Icons.shopping_basket, color: Colors.red, size: 45),
    "image": null
  },
  {
    "name": "Wakala wa Vocha",
    "icon": Icon(Icons.shopping_basket, color: Colors.red, size: 45),
    "image": null
  },
  {
    "name": "Postpaid",
    "icon": Icon(Icons.shopping_basket, color: Colors.red, size: 45),
  },
];

List<Map> dukalaTigoServices = [
  {
    "image": "assets/images/dstv.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Tuma Pesa",
    "badge": false
  },
  {
    "image": "assets/images/uhuru na umoja.jpeg",
    "secondary": "assets/images/gepg.png",
    "name": "Kulipia Bili",
    "badge": false
  },
  {
    "image": "assets/images/mastaa shangwe.jpeg",
    "secondary": "assets/images/captain.jpeg",
    "name": "Benki",
    "badge": false
  },
  {
    "image": "assets/images/vodabima.jpeg",
    "secondary": "assets/images/mpwa.png",
    "name": "Kutoa Pesa",
    "badge": false
  },
  {
    "image": "assets/images/dstv.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Malipo ya Serikali",
    "badge": false
  }
];

List<Map> tigopesa = [
  {
    "image": "assets/images/dstv.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Namba ya Siri",
    "badge": false
  },
  {
    "image": "assets/images/uhuru na umoja.jpeg",
    "secondary": "assets/images/gepg.png",
    "name": "Taarifa elektroniki",
    "badge": false
  },
  {
    "image": "assets/images/mastaa shangwe.jpeg",
    "secondary": "assets/images/captain.jpeg",
    "name": "Rudisha Muamala",
    "badge": false
  },
  {
    "image": "assets/images/vodabima.jpeg",
    "secondary": "assets/images/mpwa.png",
    "name": "Kazi Zangu",
    "badge": false
  },
  {
    "image": "assets/images/dstv.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Token za LUKU",
    "badge": false
  },
  {
    "image": "assets/images/dstv.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Namba Zangu",
    "badge": false
  },
  {
    "image": "assets/images/dstv.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Fungua Akaunti",
    "badge": false
  },
  {
    "image": "assets/images/dstv.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Pata tokeni",
    "badge": false
  }
];

List<Map> mipangilio = [
  {
    "image": "assets/images/dstv.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Vifaa vyangu",
    "badge": false
  },
  {
    "image": "assets/images/uhuru na umoja.jpeg",
    "secondary": "assets/images/gepg.png",
    "name": "Mipangilio wa",
    "badge": false
  },
  {
    "image": "assets/images/mastaa shangwe.jpeg",
    "secondary": "assets/images/captain.jpeg",
    "name": "Boresha programu",
    "badge": false
  },
];

List<Map> kituo = [
  {
    "image": "assets/images/dstv.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Huduma kwa..",
    "badge": false
  },
  {
    "image": "assets/images/uhuru na umoja.jpeg",
    "secondary": "assets/images/gepg.png",
    "name": "Taarifa",
    "badge": false
  },
];

List<Map> alika = [
  {
    "image": "assets/images/dstv.jpeg",
    "secondary": "assets/images/dstvlogo.jpeg",
    "name": "Alika na Uzawadi..",
    "badge": false
  },
];
