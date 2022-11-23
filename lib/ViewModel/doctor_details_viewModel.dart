
import 'package:demo/helper/NetworkManager/exception/exception.dart';
import 'package:demo/helper/NetworkManager/manager/network_manager.dart';
import 'package:demo/helper/NetworkManager/manager/service_api.dart';
import 'package:demo/models/doctors_details.dart';

class DoctorDetailsViewModel{
  Future<List<DoctorsResponseData?>?> doctorDetails({required DoctorRequestModel? request})async{
    List<DoctorsResponseData?>? doctorDetailsData;
    var mapReq = request?.toMap();
    try {
      await client
          .request(ServiceApi.doctor,data: mapReq,)
          .then(
            (response) {

              DoctorsDetailsModel obj = DoctorsDetailsModel.fromJson(response.data);
          List<DoctorsResponseData>? responseData = obj.data;
          if(responseData !=null){
            doctorDetailsData = responseData;
          }
        },
      );
    } catch (e) {
      print(e);
      throw APIException(e.toString(), statusCode: ErrorCode.api.index);
    }
    return doctorDetailsData;
  }
}
