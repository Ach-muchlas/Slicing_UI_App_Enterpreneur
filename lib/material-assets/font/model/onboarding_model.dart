class OnboardingModel {
  String imageBackground;
  String imageSvg;
  String tittle;
  String discription;

  OnboardingModel({
    required this.imageBackground,
    required this.imageSvg,
    required this.tittle,
    required this.discription,
  });
}

List<OnboardingModel> model = [
  // Data model Onboarding page 1
  OnboardingModel(
      imageBackground: 'assets/png/Vector_1.png',
      imageSvg: 'assets/png/logo_onboarding_1.png',
      tittle: 'Entrepreneur Basic',
      discription:
          'Tingkatkan dan uji pengetahuanmu seputar bisnis dengan fitur Entrepreneur Basic'),

  // Data model Onboarding page 2
  OnboardingModel(
      imageBackground: 'assets/png/Vector_2.png',
      imageSvg: 'assets/png/logo_onboarding_2.png',
      tittle: 'Business Class',
      discription:
          'Ikuti pelatihan bisnis untuk menambah pengetahuanmu seputar bisnis dan kewirausahaan'),

  // Data model Onboarding page 3
  OnboardingModel(
      imageBackground: 'assets/png/Vector_1.png',
      imageSvg: 'assets/png/logo_onboarding_3.png',
      tittle: 'Business Mentor',
      discription:
          'Cari mentormu dan lakukan konsultasi melalui fitur business mentor kami'),

  // Data model Onboarding page 4
  OnboardingModel(
      imageBackground: 'assets/png/Vector_2.png',
      imageSvg: 'assets/png/logo_onboarding_4.png',
      tittle: 'Business Finance',
      discription: 'Atur keuangan usahamu menggunakan fitur business finance'),
];
