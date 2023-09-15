import 'package:get/get.dart';

import '../modules/AmountInput/bindings/amount_input_binding.dart';
import '../modules/AmountInput/views/amount_input_view.dart';
import '../modules/Market/bindings/market_binding.dart';
import '../modules/Market/views/market_view.dart';
import '../modules/OTP/bindings/otp_binding.dart';
import '../modules/OTP/views/otp_view.dart';
import '../modules/SucesfulySentCrypto/bindings/sucesfuly_sent_crypto_binding.dart';
import '../modules/SucesfulySentCrypto/views/sucesfuly_sent_crypto_view.dart';
import '../modules/bitcoin/bindings/bitcoin_binding.dart';
import '../modules/bitcoin/views/bitcoin_view.dart';
import '../modules/createAccount/bindings/create_account_binding.dart';
import '../modules/createAccount/views/create_account_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/depositcrypto/bindings/depositcrypto_binding.dart';
import '../modules/depositcrypto/views/depositcrypto_view.dart';
import '../modules/ethereum/bindings/ethereum_binding.dart';
import '../modules/ethereum/views/ethereum_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/pinconfirmation/bindings/pinconfirmation_binding.dart';
import '../modules/pinconfirmation/views/pinconfirmation_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/receiveCrypto/bindings/receive_crypto_binding.dart';
import '../modules/receiveCrypto/views/receive_crypto_view.dart';
import '../modules/secureAccount/bindings/secure_account_binding.dart';
import '../modules/secureAccount/views/secure_account_view.dart';
import '../modules/sellcrypto/bindings/sellcrypto_binding.dart';
import '../modules/sellcrypto/views/sellcrypto_view.dart';
import '../modules/sendcrypto/bindings/sendcrypto_binding.dart';
import '../modules/sendcrypto/views/sendcrypto_view.dart';
import '../modules/sendcryptoconfirmation/bindings/sendcryptoconfirmation_binding.dart';
import '../modules/sendcryptoconfirmation/views/sendcryptoconfirmation_view.dart';
import '../modules/swapcrypto/bindings/swapcrypto_binding.dart';
import '../modules/swapcrypto/views/swapcrypto_view.dart';
import '../modules/tether/bindings/tether_binding.dart';
import '../modules/tether/views/tether_view.dart';
import '../modules/trade/bindings/trade_binding.dart';
import '../modules/trade/views/trade_view.dart';
import '../modules/transactionInput/bindings/transaction_input_binding.dart';
import '../modules/transactionInput/views/transaction_input_view.dart';
import '../modules/transactionOverview/bindings/transaction_overview_binding.dart';
import '../modules/transactionOverview/views/transaction_overview_view.dart';
import '../modules/transactionSuccess/bindings/transaction_success_binding.dart';
import '../modules/transactionSuccess/views/transaction_success_view.dart';
import '../modules/twoStepVerify/bindings/two_step_verify_binding.dart';
import '../modules/twoStepVerify/views/two_step_verify_view.dart';
import '../modules/twostepverificationsucess/bindings/twostepverificationsucess_binding.dart';
import '../modules/twostepverificationsucess/views/twostepverificationsucess_view.dart';
import '../modules/verifyEmail/bindings/verify_email_binding.dart';
import '../modules/verifyEmail/views/verify_email_view.dart';
import '../modules/verifySucess/bindings/verify_sucess_binding.dart';
import '../modules/verifySucess/views/verify_sucess_view.dart';
import '../modules/verifyidentity/bindings/verifyidentity_binding.dart';
import '../modules/verifyidentity/views/verifyidentity_view.dart';
import '../modules/verifyidentitysuccess/bindings/verifyidentitysuccess_binding.dart';
import '../modules/verifyidentitysuccess/views/verifyidentitysuccess_view.dart';
import '../modules/wallet/bindings/wallet_binding.dart';
import '../modules/wallet/views/wallet_view.dart';
import '../modules/welcome/bindings/welcome_binding.dart';
import '../modules/welcome/views/welcome_view.dart';
import '../modules/withdrawCrpto/bindings/withdraw_crpto_binding.dart';
import '../modules/withdrawCrpto/views/withdraw_crpto_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_ACCOUNT,
      page: () => CreateAccountView(),
      binding: CreateAccountBinding(),
    ),
    GetPage(
      name: _Paths.VERIFY_EMAIL,
      page: () => VerifyEmailView(),
      binding: VerifyEmailBinding(),
    ),
    GetPage(
      name: _Paths.VERIFY_SUCESS,
      page: () => VerifySucessView(),
      binding: VerifySucessBinding(),
    ),
    GetPage(
      name: _Paths.SECURE_ACCOUNT,
      page: () => SecureAccountView(),
      binding: SecureAccountBinding(),
    ),
    GetPage(
      name: _Paths.TWO_STEP_VERIFY,
      page: () => TwoStepVerifyView(),
      binding: TwoStepVerifyBinding(),
    ),
    GetPage(
      name: _Paths.OTP,
      page: () => OtpView(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: _Paths.MARKET,
      page: () => MarketView(),
      binding: MarketBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SENDCRYPTO,
      page: () => SendcryptoView(),
      binding: SendcryptoBinding(),
    ),
    GetPage(
      name: _Paths.TWOSTEPVERIFICATIONSUCESS,
      page: () => TwostepverificationsucessView(),
      binding: TwostepverificationsucessBinding(),
    ),
    GetPage(
      name: _Paths.VERIFYIDENTITY,
      page: () => VerifyidentityView(),
      binding: VerifyidentityBinding(),
    ),
    GetPage(
      name: _Paths.VERIFYIDENTITYSUCCESS,
      page: () => VerifyidentitysuccessView(),
      binding: VerifyidentitysuccessBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.TRADE,
      page: () => TradeView(),
      binding: TradeBinding(),
    ),
    GetPage(
      name: _Paths.WALLET,
      page: () => WalletView(),
      binding: WalletBinding(),
    ),
    GetPage(
      name: _Paths.SELLCRYPTO,
      page: () => SellcryptoView(),
      binding: SellcryptoBinding(),
    ),
    GetPage(
      name: _Paths.SWAPCRYPTO,
      page: () => SwapcryptoView(),
      binding: SwapcryptoBinding(),
    ),
    GetPage(
      name: _Paths.SENDCRYPTOCONFIRMATION,
      page: () => SendcryptoconfirmationView(),
      binding: SendcryptoconfirmationBinding(),
    ),
    GetPage(
      name: _Paths.DEPOSITCRYPTO,
      page: () => DepositcryptoView(),
      binding: DepositcryptoBinding(),
    ),
    GetPage(
      name: _Paths.WITHDRAW_CRPTO,
      page: () => WithdrawCrptoView(),
      binding: WithdrawCrptoBinding(),
    ),
    GetPage(
      name: _Paths.BITCOIN,
      page: () => BitcoinView(),
      binding: BitcoinBinding(),
    ),
    GetPage(
      name: _Paths.ETHEREUM,
      page: () => EthereumView(),
      binding: EthereumBinding(),
    ),
    GetPage(
      name: _Paths.TETHER,
      page: () => TetherView(),
      binding: TetherBinding(),
    ),
    GetPage(
      name: _Paths.PINCONFIRMATION,
      page: () => PinconfirmationView(),
      binding: PinconfirmationBinding(),
    ),
    GetPage(
      name: _Paths.TRANSACTION_SUCCESS,
      page: () => TransactionSuccessView(),
      binding: TransactionSuccessBinding(),
    ),
    GetPage(
      name: _Paths.TRANSACTION_INPUT,
      page: () => TransactionInputView(),
      binding: TransactionInputBinding(),
    ),
    GetPage(
      name: _Paths.TRANSACTION_OVERVIEW,
      page: () => TransactionOverviewView(),
      binding: TransactionOverviewBinding(),
    ),
    GetPage(
      name: _Paths.RECEIVE_CRYPTO,
      page: () => ReceiveCryptoView(),
      binding: ReceiveCryptoBinding(),
    ),
    GetPage(
      name: _Paths.SUCESFULY_SENT_CRYPTO,
      page: () => SucesfulySentCryptoView(),
      binding: SucesfulySentCryptoBinding(),
    ),
    GetPage(
      name: _Paths.AMOUNT_INPUT,
      page: () => AmountInputView(),
      binding: AmountInputBinding(),
    ),
  ];
}
