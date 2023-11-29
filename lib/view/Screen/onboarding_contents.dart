class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Discover Amazing Deals",
    image: "https://cdn-icons-png.flaticon.com/512/2178/2178604.png",
    desc: "Explore a world of discounts and savings right at your fingertips.",
  ),
  OnboardingContents(
    title: "Save Your Favorites",
    image: "https://cdn-icons-png.flaticon.com/512/1581/1581673.png",
    desc:
        "Keep track of the coupons you love and easily access them whenever you're ready to shop.",
  ),
  OnboardingContents(
    title: "Never Miss a Coupon with Your Chance",
    image: "assets/images/otherlogo.png",
    desc:
        "Get instant notifications when new coupons become available and never miss out on a deal again.",
  ),
];
