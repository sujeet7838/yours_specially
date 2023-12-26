
//https://excellisit.net/demo/your-specially/api/
const String baseUrl = 'https://yourspeciallyserver-production.up.railway.app';
const String apiVersion = 'v1';

// const String loginUserApi = '$baseUrl$apiVersion/login';
// const String registerUserApi = '$baseUrl$apiVersion/register';
// const String validateUserApi = '$baseUrl$apiVersion/check-otp';
// const String getUserApi = '$baseUrl$apiVersion/user/details';

const String loginUserApi = '$baseUrl/user/login';
const String registerUserApi = '$baseUrl/user/register';
const String validateUserApi = '$baseUrl$apiVersion/check-otp';
const String getUserApi = '$baseUrl$apiVersion/user/details';
const String createCategory= '$baseUrl/product/create_category';
const String getCategory = '$baseUrl/product/category';
const String getSubCategory = '$baseUrl/product/category';
const String createCustomerType ='$baseUrl/product/create_customer';
const String getCustomerTypes = '$baseUrl/product/customer';
const String getSubCustomerType = '$baseUrl/product/customer?type';
const String createCustomerSubCategory ='$baseUrl/product/create_sub_customer';

