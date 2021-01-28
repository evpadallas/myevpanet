// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    this.error,
    this.message,
  });

  bool error;
  Message message;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        error: json["error"],
        message: Message.fromJson(json["message"]),
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "message": message.toJson(),
      };
}

class Message {
  Message({
    this.userinfo,
  });

  Userinfo userinfo;

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        userinfo: Userinfo.fromJson(json["userinfo"]),
      );

  Map<String, dynamic> toJson() => {
        "userinfo": userinfo.toJson(),
      };
}

class Userinfo {
  Userinfo({
    this.id,
    this.date,
    this.dateChanged,
    this.login,
    this.name,
    this.password,
    this.status,
    this.memo,
    this.refUid,
    this.streetId,
    this.house,
    this.flat,
    this.pod,
    this.podFrom,
    this.floor,
    this.objtype,
    this.clearPass,
    this.packetSecs,
    this.ip,
    this.koefInet,
    this.koefLocal,
    this.account,
    this.comment,
    this.pid,
    this.packetId,
    this.flagTransfer,
    this.debt,
    this.flagIptel,
    this.iptelNumber,
    this.disconnectComment,
    this.extraAccount,
    this.realIp,
    this.connectedBy,
    this.flagAbon,
    this.numberInPort,
    this.test1,
    this.localIp,
    this.vpnIp,
    this.flagPersistRealip,
    this.realIpExpireDate,
    this.packetExpireDate,
    this.abonExripeDate,
    this.timetickFlag,
    this.speedKoef,
    this.flagPersistRealipNonvpn,
    this.autoActivation,
    this.flagSms,
    this.flagSmsSent,
    this.flagSmsSentAdv,
    this.debtHw,
    this.poeFlag,
    this.flagLeft,
    this.flagLeftNew,
    this.flagLeftReason,
    this.leftReasonComment,
    this.mac,
    this.flagBeznal,
    this.flagMont,
    this.flagFixedTarif,
    this.flagMontTv,
    this.flagMontTvRefuse,
    this.flagRippay,
    this.flagWhiteIp,
    this.flagParentControl,
    this.flagAction2015,
    this.flagDomofon,
    this.interlinkUid,
    this.accessHwid,
    this.accessPort,
    this.flagBusiness,
    this.flagBusinessOld,
    this.flagDogovor,
    this.flagReshenie,
    this.reshenie,
    this.terminalId,
    this.parentAccountId,
    this.flagPon,
    this.ponModem,
    this.lastname,
    this.firstname,
    this.patronymic,
    this.firmname,
    this.flagService,
    this.flagAkziaPacket,
    this.beznalNumber,
    this.beznalDatestart,
    this.beznalMonths,
    this.tarifName,
    this.tarifSum,
    this.street,
    this.tarifSpeed,
    this.houseTypeName,
    this.subnetId,
    this.houseType,
    this.flagAction,
    this.ts,
    this.ts2,
    this.flagMnogoetazhka,
    this.packetEnd,
    this.packetEndUtc,
    this.keepIp,
    this.dhcpLip,
    this.vlan,
    this.daysPrice,
    this.maxDays,
    this.email,
    this.doc,
    this.phones,
    this.ripneedpay,
    this.allowedTarifs,
  });

  String id;
  DateTime date;
  DateTime dateChanged;
  String login;
  String name;
  String password;
  String status;
  String memo;
  String refUid;
  String streetId;
  String house;
  String flat;
  String pod;
  String podFrom;
  String floor;
  String objtype;
  String clearPass;
  String packetSecs;
  String ip;
  String koefInet;
  String koefLocal;
  String account;
  String comment;
  String pid;
  String packetId;
  String flagTransfer;
  String debt;
  String flagIptel;
  String iptelNumber;
  dynamic disconnectComment;
  String extraAccount;
  String realIp;
  String connectedBy;
  String flagAbon;
  String numberInPort;
  String test1;
  String localIp;
  String vpnIp;
  String flagPersistRealip;
  String realIpExpireDate;
  String packetExpireDate;
  String abonExripeDate;
  String timetickFlag;
  String speedKoef;
  String flagPersistRealipNonvpn;
  String autoActivation;
  String flagSms;
  String flagSmsSent;
  String flagSmsSentAdv;
  String debtHw;
  String poeFlag;
  String flagLeft;
  String flagLeftNew;
  String flagLeftReason;
  dynamic leftReasonComment;
  String mac;
  String flagBeznal;
  String flagMont;
  String flagFixedTarif;
  String flagMontTv;
  String flagMontTvRefuse;
  String flagRippay;
  String flagWhiteIp;
  String flagParentControl;
  String flagAction2015;
  String flagDomofon;
  String interlinkUid;
  String accessHwid;
  String accessPort;
  String flagBusiness;
  String flagBusinessOld;
  String flagDogovor;
  String flagReshenie;
  dynamic reshenie;
  String terminalId;
  String parentAccountId;
  String flagPon;
  String ponModem;
  String lastname;
  String firstname;
  String patronymic;
  String firmname;
  String flagService;
  String flagAkziaPacket;
  String beznalNumber;
  String beznalDatestart;
  String beznalMonths;
  String tarifName;
  String tarifSum;
  String street;
  String tarifSpeed;
  String houseTypeName;
  String subnetId;
  String houseType;
  String flagAction;
  String ts;
  String ts2;
  String flagMnogoetazhka;
  String packetEnd;
  DateTime packetEndUtc;
  String keepIp;
  String dhcpLip;
  String vlan;
  int daysPrice;
  int maxDays;
  Email email;
  String doc;
  List<String> phones;
  bool ripneedpay;
  List<AllowedTarif> allowedTarifs;

  factory Userinfo.fromJson(Map<String, dynamic> json) => Userinfo(
        id: json["id"],
        date: DateTime.parse(json["date"]),
        dateChanged: DateTime.parse(json["date_changed"]),
        login: json["login"],
        name: json["name"],
        password: json["password"],
        status: json["status"],
        memo: json["memo"],
        refUid: json["ref_uid"],
        streetId: json["street_id"],
        house: json["house"],
        flat: json["flat"],
        pod: json["pod"],
        podFrom: json["pod_from"],
        floor: json["floor"],
        objtype: json["objtype"],
        clearPass: json["clear_pass"],
        packetSecs: json["packet_secs"],
        ip: json["ip"],
        koefInet: json["koef_inet"],
        koefLocal: json["koef_local"],
        account: json["account"],
        comment: json["comment"],
        pid: json["pid"],
        packetId: json["packet_id"],
        flagTransfer: json["flag_transfer"],
        debt: json["debt"],
        flagIptel: json["flag_iptel"],
        iptelNumber: json["iptel_number"],
        disconnectComment: json["disconnect_comment"],
        extraAccount: json["extra_account"],
        realIp: json["real_ip"],
        connectedBy: json["connected_by"],
        flagAbon: json["flag_abon"],
        numberInPort: json["number_in_port"],
        test1: json["test1"],
        localIp: json["local_ip"],
        vpnIp: json["vpn_ip"],
        flagPersistRealip: json["flag_persist_realip"],
        realIpExpireDate: json["real_ip_expire_date"],
        packetExpireDate: json["packet_expire_date"],
        abonExripeDate: json["abon_exripe_date"],
        timetickFlag: json["timetick_flag"],
        speedKoef: json["speed_koef"],
        flagPersistRealipNonvpn: json["flag_persist_realip_nonvpn"],
        autoActivation: json["auto_activation"],
        flagSms: json["flag_sms"],
        flagSmsSent: json["flag_sms_sent"],
        flagSmsSentAdv: json["flag_sms_sent_adv"],
        debtHw: json["debt_hw"],
        poeFlag: json["poe_flag"],
        flagLeft: json["flag_left"],
        flagLeftNew: json["flag_left_new"],
        flagLeftReason: json["flag_left_reason"],
        leftReasonComment: json["left_reason_comment"],
        mac: json["mac"],
        flagBeznal: json["flag_beznal"],
        flagMont: json["flag_mont"],
        flagFixedTarif: json["flag_fixed_tarif"],
        flagMontTv: json["flag_mont_tv"],
        flagMontTvRefuse: json["flag_mont_tv_refuse"],
        flagRippay: json["flag_rippay"],
        flagWhiteIp: json["flag_white_ip"],
        flagParentControl: json["flag_parent_control"],
        flagAction2015: json["flag_action_2015"],
        flagDomofon: json["flag_domofon"],
        interlinkUid: json["interlink_uid"],
        accessHwid: json["access_hwid"],
        accessPort: json["access_port"],
        flagBusiness: json["flag_business"],
        flagBusinessOld: json["flag_business_old"],
        flagDogovor: json["flag_dogovor"],
        flagReshenie: json["flag_reshenie"],
        reshenie: json["reshenie"],
        terminalId: json["terminal_id"],
        parentAccountId: json["parent_account_id"],
        flagPon: json["flag_pon"],
        ponModem: json["pon_modem"],
        lastname: json["lastname"],
        firstname: json["firstname"],
        patronymic: json["patronymic"],
        firmname: json["firmname"],
        flagService: json["flag_service"],
        flagAkziaPacket: json["flag_akzia_packet"],
        beznalNumber: json["beznal_number"],
        beznalDatestart: json["beznal_datestart"],
        beznalMonths: json["beznal_months"],
        tarifName: json["tarif_name"],
        tarifSum: json["tarif_sum"],
        street: json["street"],
        tarifSpeed: json["tarif_speed"],
        houseTypeName: json["house_type_name"],
        subnetId: json["subnet_id"],
        houseType: json["house_type"],
        flagAction: json["flag_action"],
        ts: json["ts"],
        ts2: json["ts2"],
        flagMnogoetazhka: json["flag_mnogoetazhka"],
        packetEnd: json["packet_end"],
        packetEndUtc: DateTime.parse(json["packet_end_utc"]),
        keepIp: json["keep_ip"],
        dhcpLip: json["dhcp_lip"],
        vlan: json["vlan"],
        daysPrice: json["days_price"],
        maxDays: json["max_days"],
        email: Email.fromJson(json["email"]),
        doc: json["doc"],
        phones: List<String>.from(json["phones"].map((x) => x)),
        ripneedpay: json["ripneedpay"],
        allowedTarifs: List<AllowedTarif>.from(
            json["allowed_tarifs"].map((x) => AllowedTarif.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "date": date.toIso8601String(),
        "date_changed": dateChanged.toIso8601String(),
        "login": login,
        "name": name,
        "password": password,
        "status": status,
        "memo": memo,
        "ref_uid": refUid,
        "street_id": streetId,
        "house": house,
        "flat": flat,
        "pod": pod,
        "pod_from": podFrom,
        "floor": floor,
        "objtype": objtype,
        "clear_pass": clearPass,
        "packet_secs": packetSecs,
        "ip": ip,
        "koef_inet": koefInet,
        "koef_local": koefLocal,
        "account": account,
        "comment": comment,
        "pid": pid,
        "packet_id": packetId,
        "flag_transfer": flagTransfer,
        "debt": debt,
        "flag_iptel": flagIptel,
        "iptel_number": iptelNumber,
        "disconnect_comment": disconnectComment,
        "extra_account": extraAccount,
        "real_ip": realIp,
        "connected_by": connectedBy,
        "flag_abon": flagAbon,
        "number_in_port": numberInPort,
        "test1": test1,
        "local_ip": localIp,
        "vpn_ip": vpnIp,
        "flag_persist_realip": flagPersistRealip,
        "real_ip_expire_date": realIpExpireDate,
        "packet_expire_date": packetExpireDate,
        "abon_exripe_date": abonExripeDate,
        "timetick_flag": timetickFlag,
        "speed_koef": speedKoef,
        "flag_persist_realip_nonvpn": flagPersistRealipNonvpn,
        "auto_activation": autoActivation,
        "flag_sms": flagSms,
        "flag_sms_sent": flagSmsSent,
        "flag_sms_sent_adv": flagSmsSentAdv,
        "debt_hw": debtHw,
        "poe_flag": poeFlag,
        "flag_left": flagLeft,
        "flag_left_new": flagLeftNew,
        "flag_left_reason": flagLeftReason,
        "left_reason_comment": leftReasonComment,
        "mac": mac,
        "flag_beznal": flagBeznal,
        "flag_mont": flagMont,
        "flag_fixed_tarif": flagFixedTarif,
        "flag_mont_tv": flagMontTv,
        "flag_mont_tv_refuse": flagMontTvRefuse,
        "flag_rippay": flagRippay,
        "flag_white_ip": flagWhiteIp,
        "flag_parent_control": flagParentControl,
        "flag_action_2015": flagAction2015,
        "flag_domofon": flagDomofon,
        "interlink_uid": interlinkUid,
        "access_hwid": accessHwid,
        "access_port": accessPort,
        "flag_business": flagBusiness,
        "flag_business_old": flagBusinessOld,
        "flag_dogovor": flagDogovor,
        "flag_reshenie": flagReshenie,
        "reshenie": reshenie,
        "terminal_id": terminalId,
        "parent_account_id": parentAccountId,
        "flag_pon": flagPon,
        "pon_modem": ponModem,
        "lastname": lastname,
        "firstname": firstname,
        "patronymic": patronymic,
        "firmname": firmname,
        "flag_service": flagService,
        "flag_akzia_packet": flagAkziaPacket,
        "beznal_number": beznalNumber,
        "beznal_datestart": beznalDatestart,
        "beznal_months": beznalMonths,
        "tarif_name": tarifName,
        "tarif_sum": tarifSum,
        "street": street,
        "tarif_speed": tarifSpeed,
        "house_type_name": houseTypeName,
        "subnet_id": subnetId,
        "house_type": houseType,
        "flag_action": flagAction,
        "ts": ts,
        "ts2": ts2,
        "flag_mnogoetazhka": flagMnogoetazhka,
        "packet_end": packetEnd,
        "packet_end_utc": packetEndUtc.toIso8601String(),
        "keep_ip": keepIp,
        "dhcp_lip": dhcpLip,
        "vlan": vlan,
        "days_price": daysPrice,
        "max_days": maxDays,
        "email": email.toJson(),
        "doc": doc,
        "phones": List<dynamic>.from(phones.map((x) => x)),
        "ripneedpay": ripneedpay,
        "allowed_tarifs":
            List<dynamic>.from(allowedTarifs.map((x) => x.toJson())),
      };
}

class AllowedTarif {
  AllowedTarif({
    this.id,
    this.name,
    this.sum,
    this.speed,
    this.speed2,
    this.days,
  });

  String id;
  String name;
  String sum;
  String speed;
  String speed2;
  String days;

  factory AllowedTarif.fromJson(Map<String, dynamic> json) => AllowedTarif(
        id: json["id"],
        name: json["name"],
        sum: json["sum"],
        speed: json["speed"],
        speed2: json["speed2"],
        days: json["days"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "sum": sum,
        "speed": speed,
        "speed2": speed2,
        "days": days,
      };
}

class Email {
  Email({
    this.address,
    this.confirmed,
  });

  String address;
  String confirmed;

  factory Email.fromJson(Map<String, dynamic> json) => Email(
        address: json["address"],
        confirmed: json["confirmed"],
      );

  Map<String, dynamic> toJson() => {
        "address": address,
        "confirmed": confirmed,
      };
}
