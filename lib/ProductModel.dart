class ProductModel {
int? id;
String? title;
String? subtitle;
double? price;
String? image;
bool? isFavorite;

ProductModel({
  this.id,
  this.title,
  this.subtitle,
  this.price,
  this.image,
  this.isFavorite,
});
}
List<ProductModel> ProductList = [
  ProductModel(
    id: 1,
    title: 'سماعات اذن ساوند كور لايف نوت اي من انكر',
    subtitle:'صوت مذهل: تتميز سماعات الأذن اللاسلكية الحقيقية من لايف نوت ايه بمشغلات ثلاثية الطبقات كبيرة الحجم 10 ملم لإمداد بصوت قوي مع صوت جهوري أكبر بنسبة 50% للاستمتاع بتجربة استماع ساحرة.' ,
    price: 699.00,
    image:'Images/product1.png',
    isFavorite: false,
  ), ProductModel(
    id: 3,
    title: 'موبايل سامسونج جالاكسي A13 الذكي اندرويد',
    subtitle:'128 جيجابايت، ذاكرة RAM سعة 4 جيجابايت، شريحتين اتصال، ازرق فاتح العلامة التجارية: سامسونج' ,
    price: 6385 ,
    image:'Images/product3.png',
    isFavorite: false,
  ), ProductModel(
    id: 4,
    title: 'Apple Watch SE (GPS، 44mm)',
    subtitle:'هيكل رمادي من الألمنيوم مع حزام رياضي منتصف الليل - عادي' ,
    price: 6999 ,
    image:'Images/product4.png',
    isFavorite: false,
  ), ProductModel(
    id: 5,
    title: 'شاشة العاب اسوس ROG Strix ،32',
    subtitle:'  32 بوصة منحنية اتش دي ار WQHD بتقنية FreeSync، 144 هرتز - XG32VQR' ,
    price: 26500,
    image:'Images/product5.png',
    isFavorite: false,
  ), ProductModel(
    id: 6,
    title: ' ايفون ابل 13 بسعة تخزين 128 جيجابايت، لون ميدنايت',
    subtitle:'سعة تخزين 128 جيجابايت، لون ميدنايت' ,
    price: 20900,
    image:'Images/product6.png',
    isFavorite: false,
  ),
  ProductModel(
    id: 7,
    title: ' سوني بلاي ستيشن 5 مع وحدة تحكم لاسلكية إصدار قرص مضغوط',
    subtitle:'سعة تخزين 1 تيرا بايت' ,
    price: 17000,
    image:'Images/product7.png',
    isFavorite: false,
  ),ProductModel(
    id: 8,
    title: 'ماكينة تحضير الاسبريسو',
    subtitle:'دديكا ستايل من ديلونجي EC 685.R، احمر' ,
    price: 5000,
    image:'Images/product9.png',
    isFavorite: false,
  ),ProductModel(
    id: 9,
    title: ' غسالة ال جي 2022',
    subtitle:'تحميل من الامام مع ستيم وبرنامج تعريف - 9 كجم' ,
    price: 11400,
    image:'Images/product8.png',
    isFavorite: false,
  ),
];
