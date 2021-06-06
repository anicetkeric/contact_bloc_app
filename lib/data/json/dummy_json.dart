import 'package:contact_bloc_app/data/models/CallType.dart';
import 'package:contact_bloc_app/data/models/contact_model.dart';
import 'package:contact_bloc_app/data/models/recent_model.dart';

List<Contact> contactDummyData = [
  Contact(id: 1, name: "Laurent", phone: "097846578", email: "Laurent@yahoo.fr", website: "website"),
  Contact(id: 2, name: "Avenu demau", phone: "096757", email: "Laurent@yahoo.fr", website: "website"),
  Contact(id: 3, name: "Tearima", phone: "087656747", email: "Laurent@yahoo.fr", website: "website"),
  Contact(id: 4, name: "Sirux", phone: "4587989", email: "Laurent@yahoo.fr", website: "website"),
  Contact(id: 5, name: "Spatarcus", phone: "546673663", email: "Laurent@yahoo.fr", website: "website")
] ;

List<Recent> recentDummyData = [
  Recent(id: 1,
  contact: Contact(id: 1, name: "Laurent", phone: "097846578", email: "Laurent@yahoo.fr", website: "website"),
    phoneNumber: null,
    dateStart: new DateTime.now(),
    dateEnd: new DateTime.now().add(const Duration(minutes: 2)),
    type: CallType.INBOUND
  ),
  Recent(id: 2,
    phoneNumber: "0034 606734987",
    dateStart: new DateTime.now(),
    dateEnd: new DateTime.now().add(const Duration(minutes: 1)),
    type: CallType.OUTBOUND,
    location: "Málaga"
  ),
  Recent(id: 3,
    contact: Contact(id: 4, name: "Sirux", phone: "4587989", email: "Laurent@yahoo.fr", website: "website"),
    dateStart: new DateTime.now().subtract(const Duration(days: 10)),
    dateEnd: new DateTime.now().subtract(const Duration(days: 10)).add(const Duration(seconds: 10)),
    type: CallType.OUTBOUND
  ),
  Recent(id: 3,
    phoneNumber: "0034 906734988",
    dateStart: new DateTime.now().subtract(const Duration(days: 11)),
    dateEnd: new DateTime.now().subtract(const Duration(days: 11)).add(const Duration(seconds: 10)),
    type: CallType.MISSED,
    location: "Barcelona"
  ),
] ;
