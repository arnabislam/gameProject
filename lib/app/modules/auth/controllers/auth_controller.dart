import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../../../utils/api_endpoints.dart';
import '../../home/views/home_view.dart';
import '../UserModel.dart';

class AuthController extends GetxController {
  //TODO: Implement AuthController
  //variable declare
  final Dio dio = Dio();
  final authUserInfo = UserModel().obs;
  final isLoading = false.obs;

//Login Logic
  Future<void> login(String email, String password) async {
    try {
      isLoading.value = true;
      final response = await dio.post(
        kLoginUrl,
        data: {'email': email, 'password': password},
        options: Options(
          headers: {'Accept': 'application/json'},
        ),
      );
      print(response.data);
      // Check the response status code and navigate to home page if successful
      if (response.statusCode == 200) {
        isLoading.value = false;
        var json = response.data;
        authUserInfo.value = UserModel.fromJson(json);
        Get.to(const HomeView());
        // Get.offNamed('/home');
      } else {
        isLoading.value = false;
        // Handle any errors here
        print(response.statusMessage);
      }
    } catch (e) {
      isLoading.value = false;
      // Handle any errors here
      print(e);
    }
  }

//register logic
  Future<void> register(String name, String email, String phone,
      String password, String institute) async {
    try {
      isLoading.value = true;
      final response = await dio.post(
        kRegister,
        data: {
          'name': name,
          'email': email,
          'phone': phone,
          'password': password,
          'institute': institute,
        },
        options: Options(
          headers: {'Accept': 'application/json'},
        ),
      );
      print(kRegister.toString());
      print(response.data);
      // Check the response status code and navigate to home page if successful
      if (response.statusCode == 201) {
        var json = response.data;
        authUserInfo.value = UserModel.fromJson(json);
        isLoading.value = false;
        print('Success');
        Get.to(const HomeView());
      } else {
        isLoading.value = false;
        // Handle any errors here
        print(response.statusMessage);
      }
    } catch (e) {
      isLoading.value = false;
      // Handle any errors here
      print(e);
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
