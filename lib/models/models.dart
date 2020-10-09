
import 'dart:convert';

Restaurant restaurantFromJson(String str) => Restaurant.fromJson(json.decode(str));

String restaurantToJson(Restaurant data) => json.encode(data.toJson());

class Restaurant {
  Restaurant({
    this.resultsFound,
    this.resultsStart,
    this.resultsShown,
    this.restaurants,
  });

  int resultsFound;
  int resultsStart;
  int resultsShown;
  List<RestaurantElement> restaurants;

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
    resultsFound: json['results_found'],
    resultsStart: json['results_start'],
    resultsShown: json['results_shown'],
    restaurants: List<RestaurantElement>.from(json['restaurants'].map((x) => RestaurantElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "results_found": resultsFound,
    "results_start": resultsStart,
    "results_shown": resultsShown,
    "restaurants": List<dynamic>.from(restaurants.map((x) => x.toJson())),
  };
}

class RestaurantElement {
  RestaurantElement({
    this.restaurant,
  });

  RestaurantRestaurant restaurant;
  factory RestaurantElement.fromJson(Map<String, dynamic> json) => RestaurantElement(
    restaurant: RestaurantRestaurant.fromJson (json["restaurant"]),

  );

  Map<String, dynamic> toJson() => {
    "restaurant": restaurant.toJson(),
  };



}

class RestaurantRestaurant {
  RestaurantRestaurant({
    this.apikey,
    this.id,
    this.name,
    this.url,
    this.switchToOrderMenu,
    this.cuisines,
    this.timings,
    this.averageCostForTwo,
    this.priceRange,
    this.currency,
    this.highlights,
    this.offers,
    this.opentableSupport,
    this.isZomatoBookRes,
    this.mezzoProvider,
    this.isBookFormWebView,
    this.bookFormWebViewUrl,
    this.bookAgainUrl,
    this.thumb,
    this.allReviewsCount,
    this.photosUrl,
    this.photoCount,
    this.menuUrl,
    this.featuredImage,
    this.hasOnlineDelivery,
    this.isDeliveringNow,
    this.storeType,
    this.includeBogoOffers,
    this.deeplink,
    this.isTableReservationSupported,
    this.hasTableBooking,
    this.eventsUrl,
    this.phoneNumbers,
    this.establishment,
    this.establishmentTypes,
  });

  String apikey;
  String id;
  String name;
  String url;
  int switchToOrderMenu;
  String cuisines;
  String timings;
  int averageCostForTwo;
  int priceRange;
  String currency;
  List<String> highlights;
  List<dynamic> offers;
  int opentableSupport;
  int isZomatoBookRes;
  String mezzoProvider;
  int isBookFormWebView;
  String bookFormWebViewUrl;
  String bookAgainUrl;
  String thumb;
  int allReviewsCount;
  String photosUrl;
  int photoCount;
  String menuUrl;
  String featuredImage;
  int hasOnlineDelivery;
  int isDeliveringNow;
  String storeType;
  bool includeBogoOffers;
  String deeplink;
  int isTableReservationSupported;
  int hasTableBooking;
  String eventsUrl;
  String phoneNumbers;
  List<String> establishment;
  List<dynamic> establishmentTypes;

  factory RestaurantRestaurant.fromJson(Map<String, dynamic> json) => RestaurantRestaurant(

    apikey: json["apikey"],
    id: json["id"],
    name: json["name"],
    url: json["url"],
    switchToOrderMenu: json["switch_to_order_menu"],
    cuisines: json["cuisines"],
    timings: json["timings"],
    averageCostForTwo: json["average_cost_for_two"],
    priceRange: json["price_range"],
    currency: json["currency"],
    highlights: List<String>.from(json["highlights"].map((x) => x)),
    offers: List<dynamic>.from(json["offers"].map((x) => x)),
    opentableSupport: json["opentable_support"],
    isZomatoBookRes: json["is_zomato_book_res"],
    mezzoProvider: json["mezzo_provider"],
    isBookFormWebView: json["is_book_form_web_view"],
    bookFormWebViewUrl: json["book_form_web_view_url"],
    bookAgainUrl: json["book_again_url"],
    thumb: json["thumb"],
    allReviewsCount: json["all_reviews_count"],
    photosUrl: json["photos_url"],
    photoCount: json["photo_count"],
    menuUrl: json["menu_url"],
    featuredImage: json["featured_image"],
    hasOnlineDelivery: json["has_online_delivery"],
    isDeliveringNow: json["is_delivering_now"],
    storeType: json["store_type"],
    includeBogoOffers: json["include_bogo_offers"],
    deeplink: json["deeplink"],
    isTableReservationSupported: json["is_table_reservation_supported"],
    hasTableBooking: json["has_table_booking"],
    eventsUrl: json["events_url"],
    phoneNumbers: json["phone_numbers"],
    establishment: List<String>.from(json["establishment"].map((x) => x)),
    establishmentTypes: List<dynamic>.from(json["establishment_types"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "apikey": apikey,
    "id": id,
    "name": name,
    "url": url,
    "switch_to_order_menu": switchToOrderMenu,
    "cuisines": cuisines,
    "timings": timings,
    "average_cost_for_two": averageCostForTwo,
    "price_range": priceRange,
    "currency": currency,
    "highlights": List<dynamic>.from(highlights.map((x) => x)),
    "offers": List<dynamic>.from(offers.map((x) => x)),
    "opentable_support": opentableSupport,
    "is_zomato_book_res": isZomatoBookRes,
    "mezzo_provider": mezzoProvider,
    "is_book_form_web_view": isBookFormWebView,
    "book_form_web_view_url": bookFormWebViewUrl,
    "book_again_url": bookAgainUrl,
    "thumb": thumb,
    "all_reviews_count": allReviewsCount,
    "photos_url": photosUrl,
    "photo_count": photoCount,
    "menu_url": menuUrl,
    "featured_image": featuredImage,
    "has_online_delivery": hasOnlineDelivery,
    "is_delivering_now": isDeliveringNow,
    "store_type": storeType,
    "include_bogo_offers": includeBogoOffers,
    "deeplink": deeplink,
    "is_table_reservation_supported": isTableReservationSupported,
    "has_table_booking": hasTableBooking,
    "events_url": eventsUrl,
    "phone_numbers": phoneNumbers,
    "establishment": List<dynamic>.from(establishment.map((x) => x)),
    "establishment_types": List<dynamic>.from(establishmentTypes.map((x) => x)),
  };
}
