class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({this.image, this.title, this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'مقولة عن الصحة',
      image: 'images/animation.json',
      discription:
          "يجب أن نعامل الحظ كما نعامل الصحة، نتمتع به إذا توفر، ونصبر عليه إذا ساء. كن حذراً وأنت تقرأ كتب الصحة فقد تموت بخطأ مطبعي"),
  UnbordingContent(
      title: 'مقولة عن التعليم',
      image: 'images/interface.json',
      discription:
          "السلام لا يعني غياب الصراعات , فالاختلاف سيستمر دائما في الوجود .. السلام يعني أن نحل هذه الإختلافات بوسائل سلمية عن طريق الحوار , التعليم , المعرفة , والطرق الإنسانية"),
  UnbordingContent(
      title: 'مقولة عن الرياضة',
      image: 'images/scrolling.json',
      discription:
          "إذا أردت أن تضيع شعبا أشغله بغياب الأنبوبة وغياب البنزين ثم غيب عقله واخلط السياسة بالإقتصاد بالدين بالرياضة "),
];
