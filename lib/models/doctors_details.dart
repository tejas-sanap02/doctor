class DoctorRequestModel {
  String? userId;
  String? doctorId;

  DoctorRequestModel({ this.userId,  this.doctorId});
  Map<String, dynamic> toMap() {
    return {
      'user_id': userId,
      'doctor_id': doctorId,
    };
  }
}
class DoctorsDetailsModel {
  DoctorsDetailsModel({
    this.message,
    this.status,
    this.data,
  });

  String? message;
  bool? status;
  List<DoctorsResponseData>? data;

  factory DoctorsDetailsModel.fromJson(Map<String, dynamic> json) => DoctorsDetailsModel(
    message: json["message"] == null ? null : json["message"],
    status: json["status"] == null ? null : json["status"],
    data: json["data"] == null ? null : List<DoctorsResponseData>.from(json["data"].map((x) => DoctorsResponseData.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "message": message == null ? null : message,
    "status": status == null ? null : status,
    "data": data == null ? null : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class DoctorsResponseData {
  DoctorsResponseData({
    this.id,
    this.userId,
    this.clinicId,
    this.roomId,
    this.doctorName,
    this.email,
    this.phoneCountryCode,
    this.phoneNumber,
    this.fcmToken,
    this.gender,
    this.address,
    this.cityId,
    this.languages,
    this.specialityId,
    this.registrationNum,
    this.medicalAuthorityId,
    this.degreeSuffix,
    this.expertiseSubSpecialty,
    this.image,
    this.pdfHeader,
    this.pdfFooter,
    this.scheduleDays,
    this.scheduleTimings,
    this.hoursPerMonth,
    this.agreementFile,
    this.startDate,
    this.agreementRenewDate,
    this.consulationFee,
    this.timePerPatient,
    this.appointmentPhoneNumber,
    this.website,
    this.instagram,
    this.facebook,
    this.youtube,
    this.profileShareCount,
    this.profileVerified,
    this.profileStatus,
    this.resetToken,
    this.onRequest,
    this.prePayEnrolled,
    this.prePayDiscount,
    this.totalExperience,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
    this.status,
    this.rentAmount,
    this.securityAmount,
    this.procedure,
    this.timeslots,
    this.latestTimeslot,
    this.diseaseFocus,
    this.education,
    this.speciality,
    this.timings,
    this.doctorImages,
  });

  int? id;
  dynamic userId;
  String? clinicId;
  String? roomId;
  String? doctorName;
  String? email;
  String? phoneCountryCode;
  String? phoneNumber;
  dynamic fcmToken;
  String? gender;
  String? address;
  dynamic cityId;
  String? languages;
  int? specialityId;
  String? registrationNum;
  dynamic medicalAuthorityId;
  String? degreeSuffix;
  String? expertiseSubSpecialty;
  String? image;
  String? pdfHeader;
  String? pdfFooter;
  String? scheduleDays;
  String? scheduleTimings;
  String? hoursPerMonth;
  String? agreementFile;
  DateTime? startDate;
  DateTime? agreementRenewDate;
  String? consulationFee;
  String? timePerPatient;
  String? appointmentPhoneNumber;
  String? website;
  dynamic instagram;
  dynamic facebook;
  dynamic youtube;
  dynamic profileShareCount;
  int? profileVerified;
  int? profileStatus;
  dynamic resetToken;
  int? onRequest;
  int? prePayEnrolled;
  dynamic prePayDiscount;
  String? totalExperience;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic createdBy;
  int? updatedBy;
  int? status;
  String? rentAmount;
  String? securityAmount;
  List<dynamic>? procedure;
  List<Timeslot>? timeslots;
  Timeslot? latestTimeslot;
  List<dynamic>? diseaseFocus;
  List<dynamic>? education;
  Speciality? speciality;
  List<Timing>? timings;
  List<DoctorImage>? doctorImages;

  factory DoctorsResponseData.fromJson(Map<String, dynamic> json) => DoctorsResponseData(
    id: json["id"] == null ? null : json["id"],
    userId: json["user_id"],
    clinicId: json["clinic_id"] == null ? null : json["clinic_id"],
    roomId: json["room_id"] == null ? null : json["room_id"],
    doctorName: json["doctor_name"] == null ? null : json["doctor_name"],
    email: json["email"] == null ? null : json["email"],
    phoneCountryCode: json["phone_country_code"] == null ? null : json["phone_country_code"],
    phoneNumber: json["phone_number"] == null ? null : json["phone_number"],
    fcmToken: json["fcm_token"],
    gender: json["gender"] == null ? null : json["gender"],
    address: json["address"] == null ? null : json["address"],
    cityId: json["city_id"],
    languages: json["languages"] == null ? null : json["languages"],
    specialityId: json["speciality_id"] == null ? null : json["speciality_id"],
    registrationNum: json["registration_num"] == null ? null : json["registration_num"],
    medicalAuthorityId: json["medical_authority_id"],
    degreeSuffix: json["degree_suffix"] == null ? null : json["degree_suffix"],
    expertiseSubSpecialty: json["expertise_subSpecialty"] == null ? null : json["expertise_subSpecialty"],
    image: json["image"] == null ? null : json["image"],
    pdfHeader: json["pdf_header"] == null ? null : json["pdf_header"],
    pdfFooter: json["pdf_footer"] == null ? null : json["pdf_footer"],
    scheduleDays: json["scheduleDays"] == null ? null : json["scheduleDays"],
    scheduleTimings: json["scheduleTimings"] == null ? null : json["scheduleTimings"],
    hoursPerMonth: json["hours_per_month"] == null ? null : json["hours_per_month"],
    agreementFile: json["agreement_file"] == null ? null : json["agreement_file"],
    startDate: json["start_date"] == null ? null : DateTime.parse(json["start_date"]),
    agreementRenewDate: json["agreement_renew_date"] == null ? null : DateTime.parse(json["agreement_renew_date"]),
    consulationFee: json["consulationFee"] == null ? null : json["consulationFee"],
    timePerPatient: json["time_per_patient"] == null ? null : json["time_per_patient"],
    appointmentPhoneNumber: json["appointment_phone_number"] == null ? null : json["appointment_phone_number"],
    website: json["website"] == null ? null : json["website"],
    instagram: json["instagram"],
    facebook: json["facebook"],
    youtube: json["youtube"],
    profileShareCount: json["profile_share_count"],
    profileVerified: json["profile_verified"] == null ? null : json["profile_verified"],
    profileStatus: json["profile_status"] == null ? null : json["profile_status"],
    resetToken: json["reset_token"],
    onRequest: json["on_request"] == null ? null : json["on_request"],
    prePayEnrolled: json["pre_pay_enrolled"] == null ? null : json["pre_pay_enrolled"],
    prePayDiscount: json["pre_pay_discount"],
    totalExperience: json["total_experience"] == null ? null : json["total_experience"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    createdBy: json["created_by"],
    updatedBy: json["updated_by"] == null ? null : json["updated_by"],
    status: json["status"] == null ? null : json["status"],
    rentAmount: json["rent_amount"] == null ? null : json["rent_amount"],
    securityAmount: json["security_amount"] == null ? null : json["security_amount"],
    procedure: json["procedure"] == null ? null : List<dynamic>.from(json["procedure"].map((x) => x)),
    timeslots: json["timeslots"] == null ? null : List<Timeslot>.from(json["timeslots"].map((x) => Timeslot.fromJson(x))),
    latestTimeslot: json["latest_timeslot"] == null ? null : Timeslot.fromJson(json["latest_timeslot"]),
    diseaseFocus: json["disease_focus"] == null ? null : List<dynamic>.from(json["disease_focus"].map((x) => x)),
    education: json["education"] == null ? null : List<dynamic>.from(json["education"].map((x) => x)),
    speciality: json["speciality"] == null ? null : Speciality.fromJson(json["speciality"]),
    timings: json["timings"] == null ? null : List<Timing>.from(json["timings"].map((x) => Timing.fromJson(x))),
    doctorImages: json["doctor_images"] == null ? null : List<DoctorImage>.from(json["doctor_images"].map((x) => DoctorImage.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "user_id": userId,
    "clinic_id": clinicId == null ? null : clinicId,
    "room_id": roomId == null ? null : roomId,
    "doctor_name": doctorName == null ? null : doctorName,
    "email": email == null ? null : email,
    "phone_country_code": phoneCountryCode == null ? null : phoneCountryCode,
    "phone_number": phoneNumber == null ? null : phoneNumber,
    "fcm_token": fcmToken,
    "gender": gender == null ? null : gender,
    "address": address == null ? null : address,
    "city_id": cityId,
    "languages": languages == null ? null : languages,
    "speciality_id": specialityId == null ? null : specialityId,
    "registration_num": registrationNum == null ? null : registrationNum,
    "medical_authority_id": medicalAuthorityId,
    "degree_suffix": degreeSuffix == null ? null : degreeSuffix,
    "expertise_subSpecialty": expertiseSubSpecialty == null ? null : expertiseSubSpecialty,
    "image": image == null ? null : image,
    "pdf_header": pdfHeader == null ? null : pdfHeader,
    "pdf_footer": pdfFooter == null ? null : pdfFooter,
    "scheduleDays": scheduleDays == null ? null : scheduleDays,
    "scheduleTimings": scheduleTimings == null ? null : scheduleTimings,
    "hours_per_month": hoursPerMonth == null ? null : hoursPerMonth,
    "agreement_file": agreementFile == null ? null : agreementFile,
    "start_date": startDate == null ? null : "${startDate?.year.toString().padLeft(4, '0')}-${startDate?.month.toString().padLeft(2, '0')}-${startDate?.day.toString().padLeft(2, '0')}",
    "agreement_renew_date": agreementRenewDate == null ? null : "${agreementRenewDate?.year.toString().padLeft(4, '0')}-${agreementRenewDate?.month.toString().padLeft(2, '0')}-${agreementRenewDate?.day.toString().padLeft(2, '0')}",
    "consulationFee": consulationFee == null ? null : consulationFee,
    "time_per_patient": timePerPatient == null ? null : timePerPatient,
    "appointment_phone_number": appointmentPhoneNumber == null ? null : appointmentPhoneNumber,
    "website": website == null ? null : website,
    "instagram": instagram,
    "facebook": facebook,
    "youtube": youtube,
    "profile_share_count": profileShareCount,
    "profile_verified": profileVerified == null ? null : profileVerified,
    "profile_status": profileStatus == null ? null : profileStatus,
    "reset_token": resetToken,
    "on_request": onRequest == null ? null : onRequest,
    "pre_pay_enrolled": prePayEnrolled == null ? null : prePayEnrolled,
    "pre_pay_discount": prePayDiscount,
    "total_experience": totalExperience == null ? null : totalExperience,
    "created_at": createdAt == null ? null : createdAt?.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt?.toIso8601String(),
    "created_by": createdBy,
    "updated_by": updatedBy == null ? null : updatedBy,
    "status": status == null ? null : status,
    "rent_amount": rentAmount == null ? null : rentAmount,
    "security_amount": securityAmount == null ? null : securityAmount,
    "procedure": procedure == null ? null : List<dynamic>.from(procedure!.map((x) => x)),
    "timeslots": timeslots == null ? null : List<dynamic>.from(timeslots!.map((x) => x.toJson())),
    "latest_timeslot": latestTimeslot == null ? null : latestTimeslot?.toJson(),
    "disease_focus": diseaseFocus == null ? null : List<dynamic>.from(diseaseFocus!.map((x) => x)),
    "education": education == null ? null : List<dynamic>.from(education!.map((x) => x)),
    "speciality": speciality == null ? null : speciality?.toJson(),
    "timings": timings == null ? null : List<dynamic>.from(timings!.map((x) => x.toJson())),
    "doctor_images": doctorImages == null ? null : List<dynamic>.from(doctorImages!.map((x) => x.toJson())),
  };
}

class DoctorImage {
  DoctorImage({
    this.id,
    this.doctorId,
    this.sectionId,
    this.image,
    this.pattern,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.status,
    this.section,
  });

  int? id;
  int? doctorId;
  int? sectionId;
  String? image;
  String? pattern;
  dynamic createdBy;
  dynamic updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? status;
  Section? section;

  factory DoctorImage.fromJson(Map<String, dynamic> json) => DoctorImage(
    id: json["id"] == null ? null : json["id"],
    doctorId: json["doctor_id"] == null ? null : json["doctor_id"],
    sectionId: json["section_id"] == null ? null : json["section_id"],
    image: json["image"] == null ? null : json["image"],
    pattern: json["pattern"] == null ? null : json["pattern"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    status: json["status"] == null ? null : json["status"],
    section: json["section"] == null ? null : Section.fromJson(json["section"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "doctor_id": doctorId == null ? null : doctorId,
    "section_id": sectionId == null ? null : sectionId,
    "image": image == null ? null : image,
    "pattern": pattern == null ? null : pattern,
    "created_by": createdBy,
    "updated_by": updatedBy,
    "created_at": createdAt == null ? null : createdAt?.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt?.toIso8601String(),
    "status": status == null ? null : status,
    "section": section == null ? null : section?.toJson(),
  };
}

class Section {
  Section({
    this.id,
    this.title,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
    this.status,
  });

  int? id;
  String? title;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic createdBy;
  dynamic updatedBy;
  int? status;

  factory Section.fromJson(Map<String, dynamic> json) => Section(
    id: json["id"] == null ? null : json["id"],
    title: json["title"] == null ? null : json["title"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    status: json["status"] == null ? null : json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "title": title == null ? null : title,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "created_by": createdBy,
    "updated_by": updatedBy,
    "status": status == null ? null : status,
  };
}

class Timeslot {
  Timeslot({
    this.id,
    this.doctorId,
    this.date,
    this.timeFrom,
    this.timeTo,
    this.clinicId,
    this.clinicRoomsId,
    this.bookingStatus,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
    this.status,
  });

  int? id;
  int? doctorId;
  DateTime? date;
  String? timeFrom;
  String? timeTo;
  int? clinicId;
  int? clinicRoomsId;
  int? bookingStatus;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic createdBy;
  dynamic updatedBy;
  int? status;

  factory Timeslot.fromJson(Map<String, dynamic> json) => Timeslot(
    id: json["id"] == null ? null : json["id"],
    doctorId: json["doctor_id"] == null ? null : json["doctor_id"],
    date: json["date"] == null ? null : DateTime.parse(json["date"]),
    timeFrom: json["time_from"] == null ? null : json["time_from"],
    timeTo: json["time_to"] == null ? null : json["time_to"],
    clinicId: json["clinic_id"] == null ? null : json["clinic_id"],
    clinicRoomsId: json["clinic_rooms_id"] == null ? null : json["clinic_rooms_id"],
    bookingStatus: json["booking_status"] == null ? null : json["booking_status"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    status: json["status"] == null ? null : json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "doctor_id": doctorId == null ? null : doctorId,
    "date": date == null ? null : "${date?.year.toString().padLeft(4, '0')}-${date?.month.toString().padLeft(2, '0')}-${date?.day.toString().padLeft(2, '0')}",
    "time_from": timeFrom == null ? null : timeFrom,
    "time_to": timeTo == null ? null : timeTo,
    "clinic_id": clinicId == null ? null : clinicId,
    "clinic_rooms_id": clinicRoomsId == null ? null : clinicRoomsId,
    "booking_status": bookingStatus == null ? null : bookingStatus,
    "created_at": createdAt == null ? null : createdAt?.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt?.toIso8601String(),
    "created_by": createdBy,
    "updated_by": updatedBy,
    "status": status == null ? null : status,
  };
}

class Speciality {
  Speciality({
    this.id,
    this.name,
    this.iconUrl,
    this.status,
    this.description,
    this.conditions,
    this.createdAt,
    this.updatedAt,
    this.bgColor1,
    this.bgColor2,
    this.iconColor,
    this.createdBy,
    this.updatedBy,
  });

  int? id;
  String? name;
  String? iconUrl;
  int? status;
  String? description;
  String? conditions;
  dynamic createdAt;
  DateTime? updatedAt;
  String? bgColor1;
  String? bgColor2;
  dynamic iconColor;
  dynamic createdBy;
  dynamic updatedBy;

  factory Speciality.fromJson(Map<String, dynamic> json) => Speciality(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    iconUrl: json["icon_url"] == null ? null : json["icon_url"],
    status: json["status"] == null ? null : json["status"],
    description: json["description"] == null ? null : json["description"],
    conditions: json["conditions"] == null ? null : json["conditions"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    bgColor1: json["bg_color1"] == null ? null : json["bg_color1"],
    bgColor2: json["bg_color2"] == null ? null : json["bg_color2"],
    iconColor: json["icon_color"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "icon_url": iconUrl == null ? null : iconUrl,
    "status": status == null ? null : status,
    "description": description == null ? null : description,
    "conditions": conditions == null ? null : conditions,
    "created_at": createdAt,
    "updated_at": updatedAt == null ? null : updatedAt?.toIso8601String(),
    "bg_color1": bgColor1 == null ? null : bgColor1,
    "bg_color2": bgColor2 == null ? null : bgColor2,
    "icon_color": iconColor,
    "created_by": createdBy,
    "updated_by": updatedBy,
  };
}

class Timing {
  Timing({
    this.id,
    this.doctorId,
    this.scheduleDays,
    this.scheduleTimings,
    this.timePerPatient,
    this.clinicId,
    this.clinicRoomsId,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.status,
    this.clinic,
  });

  int? id;
  int? doctorId;
  String? scheduleDays;
  String? scheduleTimings;
  dynamic timePerPatient;
  int? clinicId;
  int? clinicRoomsId;
  int? createdBy;
  int? updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? status;
  Clinic? clinic;

  factory Timing.fromJson(Map<String, dynamic> json) => Timing(
    id: json["id"] == null ? null : json["id"],
    doctorId: json["doctor_id"] == null ? null : json["doctor_id"],
    scheduleDays: json["scheduleDays"] == null ? null : json["scheduleDays"],
    scheduleTimings: json["scheduleTimings"] == null ? null : json["scheduleTimings"],
    timePerPatient: json["time_per_patient"],
    clinicId: json["clinic_id"] == null ? null : json["clinic_id"],
    clinicRoomsId: json["clinic_rooms_id"] == null ? null : json["clinic_rooms_id"],
    createdBy: json["created_by"] == null ? null : json["created_by"],
    updatedBy: json["updated_by"] == null ? null : json["updated_by"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    status: json["status"] == null ? null : json["status"],
    clinic: json["clinic"] == null ? null : Clinic.fromJson(json["clinic"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "doctor_id": doctorId == null ? null : doctorId,
    "scheduleDays": scheduleDays == null ? null : scheduleDays,
    "scheduleTimings": scheduleTimings == null ? null : scheduleTimings,
    "time_per_patient": timePerPatient,
    "clinic_id": clinicId == null ? null : clinicId,
    "clinic_rooms_id": clinicRoomsId == null ? null : clinicRoomsId,
    "created_by": createdBy == null ? null : createdBy,
    "updated_by": updatedBy == null ? null : updatedBy,
    "created_at": createdAt == null ? null : createdAt?.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt?.toIso8601String(),
    "status": status == null ? null : status,
    "clinic": clinic == null ? null : clinic?.toJson(),
  };
}

class Clinic {
  Clinic({
    this.id,
    this.title,
    this.address,
    this.totalRoooms,
    this.phoneNumber,
    this.gstin,
    this.stateCode,
    this.ipAddressList,
    this.latitude,
    this.longitude,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
    this.status,
    this.rooms,
  });

  int? id;
  String? title;
  String? address;
  int? totalRoooms;
  String? phoneNumber;
  dynamic gstin;
  dynamic stateCode;
  String? ipAddressList;
  String? latitude;
  String? longitude;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic createdBy;
  dynamic updatedBy;
  int? status;
  List<Room>? rooms;

  factory Clinic.fromJson(Map<String, dynamic> json) => Clinic(
    id: json["id"] == null ? null : json["id"],
    title: json["title"] == null ? null : json["title"],
    address: json["address"] == null ? null : json["address"],
    totalRoooms: json["total_roooms"] == null ? null : json["total_roooms"],
    phoneNumber: json["phone_number"] == null ? null : json["phone_number"],
    gstin: json["GSTIN"],
    stateCode: json["state_code"],
    ipAddressList: json["ip_address_list"] == null ? null : json["ip_address_list"],
    latitude: json["latitude"] == null ? null : json["latitude"],
    longitude: json["longitude"] == null ? null : json["longitude"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    status: json["status"] == null ? null : json["status"],
    rooms: json["rooms"] == null ? null : List<Room>.from(json["rooms"].map((x) => Room.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "title": title == null ? null : title,
    "address": address == null ? null : address,
    "total_roooms": totalRoooms == null ? null : totalRoooms,
    "phone_number": phoneNumber == null ? null : phoneNumber,
    "GSTIN": gstin,
    "state_code": stateCode,
    "ip_address_list": ipAddressList == null ? null : ipAddressList,
    "latitude": latitude == null ? null : latitude,
    "longitude": longitude == null ? null : longitude,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "created_by": createdBy,
    "updated_by": updatedBy,
    "status": status == null ? null : status,
    "rooms": rooms == null ? null : List<dynamic>.from(rooms!.map((x) => x.toJson())),
  };
}

class Room {
  Room({
    this.id,
    this.clinicId,
    this.roomNumber,
    this.roomType,
    this.mapImage,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
    this.status,
  });

  int? id;
  int? clinicId;
  String? roomNumber;
  int? roomType;
  dynamic mapImage;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic createdBy;
  dynamic updatedBy;
  int? status;

  factory Room.fromJson(Map<String, dynamic> json) => Room(
    id: json["id"] == null ? null : json["id"],
    clinicId: json["clinic_id"] == null ? null : json["clinic_id"],
    roomNumber: json["room_number"] == null ? null : json["room_number"],
    roomType: json["room_type"] == null ? null : json["room_type"],
    mapImage: json["map_image"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    status: json["status"] == null ? null : json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "clinic_id": clinicId == null ? null : clinicId,
    "room_number": roomNumber == null ? null : roomNumber,
    "room_type": roomType == null ? null : roomType,
    "map_image": mapImage,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "created_by": createdBy,
    "updated_by": updatedBy,
    "status": status == null ? null : status,
  };
}
