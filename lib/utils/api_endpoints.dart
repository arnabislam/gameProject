//Domain and Urls Info
const kDomain = 'https://cattleloan.sheikhit.net';
const baseUrl = '$kDomain/api';
//Auth api
const kLoginUrl = '$baseUrl/login';
const kRegister = '$baseUrl/register';
//submit form
const kSubmitForm = '$baseUrl/form';
const kShowForm = '$baseUrl/showforms';
String kOneShowForm(int id) => '$baseUrl/showform/$id';

const kFarmerInfoCreateUrl = '$baseUrl/farmerinfo';
String kFarmerInfoUpdate(int id) => '$baseUrl/farmerinfo/$id';
const kFaceMatch = 'https://cattleface.sheikhit.net/api/match/';
