import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BirthReq with ChangeNotifier{

  String _district = "";
  String _townpanchayat = "";
  String _mobile = "";
  String _email = "";

  String _childname = "";
  String _gender = "";
  String _dob = "";
  String _ide = "";

  String _fname = "";
  String _mname = "";
  String _fage = "";
  String _mage = "";
  String _focc = "";
  String _mocc = "";
  String _add = "";
  String _pincode = "";

  String _weight = "";
  String _religion = "";
  String _deliver = "";
  String _place = "";

  String get District => _district;
  String get TownPanchayat => _townpanchayat;
  String get Mobile => _mobile;
  String get Email => _email;

  String get ChildName => _childname;
  String get Gender => _gender;
  String get Dob => _dob;
  String get Ide => _ide;

  String get Fname => _fname;
  String get Mname => _mname;
  String get Fage => _fage;
  String get Mage => _mage;
  String get Focc => _focc;
  String get Mocc => _mocc;
  String get Address => _add;
  String get Pincode => _pincode;

  String get Weight => _weight;
  String get Religion => _religion;
  String get Delivery => _deliver;
  String get Place => _place;

  void set_district(String a){
    this._district = a;
    notifyListeners();
  }

  void set_townpanchayat(String a){
    this._townpanchayat = a;
    notifyListeners();
  }

  void set_mobile(String a){
    this._mobile = a;
    notifyListeners();
  }

  void set_email(String a){
    this._email = a;
    notifyListeners();
  }


  void set_dob(String a){
    this._dob = a;
    notifyListeners();
  }

  void set_gender(String a){
    this._gender = a;
    notifyListeners();
  }

  void set_cname(String a){
    this._childname = a;
    notifyListeners();
  }

  void set_ide(String a){
    this._ide = a;
    notifyListeners();
  }


  void set_fname(String a){
    this._fname = a;
    notifyListeners();
  }

  void set_mname(String a){
    this._mname = a;
    notifyListeners();
  }

  void set_fage(String a){
    this._fage = a;
    notifyListeners();
  }

  void set_mage(String a){
    this._mage = a;
    notifyListeners();
  }

  void set_focc(String a){
    this._focc = a;
    notifyListeners();
  }

  void set_mocc(String a){
    this._mocc = a;
    notifyListeners();
  }

  void set_add(String a){
    this._add = a;
    notifyListeners();
  }

  void set_pin(String a){
    this._pincode = a;
    notifyListeners();
  }


  void set_weight(String a){
    this._weight = a;
    notifyListeners();
  }

  void set_religion(String a){
    this._religion = a;
    notifyListeners();
  }

  void set_delivery(String a){
    this._deliver= a;
    notifyListeners();
  }

  void set_place(String a){
    this._place = a;
    notifyListeners();
  }

  Future<void> get_data() async{
    try{
      final DocumentSnapshot snap = await FirebaseFirestore.instance
          .collection("Birth Certificate")
          .doc(this._email+" "+this._childname)
          .get();
      this._district = snap['District'];
      this._townpanchayat = snap['Town Panchayat'];
      this._mobile = snap['Mobile Number'];
      this._email = snap['Email'];

      this._childname = snap['Child Name'];
      this._gender = snap['Gender'];
      this._dob = snap['DOB'];
      this._ide = snap['Identification'];

      this._fname = snap['Father Name'];
      this._mname= snap['Mother Name'];
      this._fage = snap['Father Age'];
      this._mage = snap['Mother Age'];
      this._focc = snap['Father Occ'];
      this._mocc = snap['Mother Occ'];
      this._add = snap['Address'];
      this._pincode = snap['Pincode'];

      this._weight = snap['Weight'];
      this._religion = snap['Religion'];
      this._deliver = snap['Delivery'];
      this._place = snap['Place'];

    }
    catch(exception){
      print("Get Error === "+exception.toString());
    }
  }




  Future<void> set_data() async{
      print("Heyhey");
      print("== DISTRICT =="+this._district);
      print("== PINCODE =="+this._pincode);
      try{
        await FirebaseFirestore.instance.collection("Birth Registration").doc(this._email+" "+this._childname).set(
            {
              "District" : this._district,
              "Town Panchayat" : this._townpanchayat,
              "Mobile Number" : this._mobile,
              "Email" : this._email,

              "DOB" : this._dob,
              "Gender" : this._gender,
              "Child Name" : this._childname,
              "Identification" : this._ide,

              "Father Name" : this._fname,
              "Mother Name" : this._mname,
              "Father Age" : this._fage,
              "Mother Age" : this._mname,
              "Father Occ" : this._focc,
              "Mother Occ" : this._mocc,
              "Address" : this._add,
              "Pincode" : this._pincode,

              "Weight" : this._weight,
              "Religion" : this._religion,
              "Delivery" : this._deliver,
              "Place" : this._place,

            });
      }
      catch(exception){
        print("Error "+exception.toString());
      }
      notifyListeners();
    }
}