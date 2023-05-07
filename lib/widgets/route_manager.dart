import 'package:cinema_plus/features/introduction_screen.dart';
import 'package:cinema_plus/features/splash_screen.dart';
import 'package:cinema_plus/widgets/strings_manager.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splashScreen = "/";
  static const String welcomeMainScreen = '/welcome-main-screen';
  static const String tearmsOfServiceRoute = "/tearms-of-service";
  static const String loginRoute = "/ogin-screen";
  static const String linkedinLoginScreen = "linkedin-login-screen";
  static const String verifyEmailRoute = "verify-email";
  static const String welcomeRoute = "/welcome";
  static const String enterPinRoute = "/enter-pin";
  static const String loginPinScreen = "/login-pin-screen";
  static const String fingerBiometricRoute = "/finger-biometric";
  static const String faceBiometricRoute = "/face-biometric";
  static const String addBasicDetailsRoute = "/basic-details";
  static const String addHomeAddressRoute = "/home-address";
  static const String addProfilePhotoRoute = "/add-profile-photo";
  static const String idPassportRoute = "/id-passport";
  static const String selectGovDocumentRoute = "/select-gov-document";
  static const String uploadDocumentRoute = "/upload-document";
  static const String bottomNavigationBarRoute = "/bottom-navigation-bar";
  static const String credentialsPhotoRoute = "/credentials-screen";
  static const String recepientRoute = "/recepient-screen";
  static const String settingsRoute = "/settings-screen";
  static const String homeRoute = "/home-screen";
  static const String addNewCredentialsRoute = "/add-new-credential";
  static const String selectPassportUploadRoute = "/passport-upload";
  static const String editRecipientsRoute = "/edit -recipients";
  static const String verifyDocumentRoute = "/verify-document";
  static const String successDocumentRoute = "/success-document";
  static const String addRecipientRoute = "/add-recipient";
  static const String setExpiryDateRoute = "/set-expiry-date";
  static const String shareCredentialsRoute = "/share-credentials";
  static const String recipientAddedRoute = "/recipient-added";
  static const String credVerifyRoute = "/cred-verify";
  static const String credSuccessRoute = "/cred-success";
  static const String credUploadRoute = "/cred-upload";
  static const String securitySettingRoute = "/security-setting";
  static const String updateProfileDetailsRoute = "/update-profile-details";
  static const String minteliumIdRoute = "/mintelium-id";
  static const String changePinRoute = "/change-pin-screen";
  static const String yotiWebViewScreen = "/yoti-webview-screen";
  static const String rightToWorkIntroScreen = "/right-to-work-intro-screen";
  static const String rightToWorkWebViewScreen =
      "/right-to-work-webview-screen";
  static const String rightToWorkAddCodeScreen =
      "/right-to-work-add-code-screen";
  static const String rightToWorkSuccessScreen =
      "/right-to-work-success-screen";
  static const emailInvitedScreen = "/email-invited-screen";
  static const accountRecoveryPhaseScreen = "/account-recovery-phase-screen";

  static void popUntil(
    BuildContext context, {
    required String name,
    Object? arguments,
  }) {
    Navigator.of(context).pushNamedAndRemoveUntil(
      name,
      (_) => false,
      arguments: arguments,
    );
  }

  static void popTo(BuildContext context, {required String name}) {
    Navigator.of(context).popUntil(ModalRoute.withName(name));
  }
}

class RouteGenerator {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppRoutes.splashScreen:
        return _buildRouteScreen(
          name: routeSettings.name,
          child: const SplashScreen(),
        );

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return _buildRouteScreen(
      child: const Scaffold(
        body: Center(
          child: Text(
            AppStrings.kNoRouteFound,
            // style: getMediumStyle(color: ColorManager.white),
          ),
        ),
      ),
    );
  }

  static MaterialPageRoute<dynamic> _buildRouteScreen({
    String? name,
    required Widget child,
  }) {
    return MaterialPageRoute<dynamic>(
      settings: RouteSettings(name: name),
      builder: (_) => child,
    );
  }
}
