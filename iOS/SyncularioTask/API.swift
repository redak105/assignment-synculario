//  This file was automatically generated and should not be edited.

import Apollo

public final class StationsQuery: GraphQLQuery {
  public static let operationString =
    "query Stations {\n  stations {\n    __typename\n    ...StationDetail\n  }\n}"

  public static var requestString: String { return operationString.appending(StationDetail.fragmentString) }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("stations", type: .list(.object(Station.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(stations: [Station?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "stations": stations.flatMap { (value: [Station?]) -> [Snapshot?] in value.map { (value: Station?) -> Snapshot? in value.flatMap { (value: Station) -> Snapshot in value.snapshot } } }])
    }

    public var stations: [Station?]? {
      get {
        return (snapshot["stations"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Station?] in value.map { (value: Snapshot?) -> Station? in value.flatMap { (value: Snapshot) -> Station in Station(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [Station?]) -> [Snapshot?] in value.map { (value: Station?) -> Snapshot? in value.flatMap { (value: Station) -> Snapshot in value.snapshot } } }, forKey: "stations")
      }
    }

    public struct Station: GraphQLSelectionSet {
      public static let possibleTypes = ["Station"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("startStationId", type: .scalar(Int.self)),
        GraphQLField("startStationName", type: .scalar(String.self)),
        GraphQLField("startStationLatitude", type: .scalar(Double.self)),
        GraphQLField("startStationLongitude", type: .scalar(Double.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(startStationId: Int? = nil, startStationName: String? = nil, startStationLatitude: Double? = nil, startStationLongitude: Double? = nil) {
        self.init(snapshot: ["__typename": "Station", "startStationId": startStationId, "startStationName": startStationName, "startStationLatitude": startStationLatitude, "startStationLongitude": startStationLongitude])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var startStationId: Int? {
        get {
          return snapshot["startStationId"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startStationId")
        }
      }

      public var startStationName: String? {
        get {
          return snapshot["startStationName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "startStationName")
        }
      }

      public var startStationLatitude: Double? {
        get {
          return snapshot["startStationLatitude"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "startStationLatitude")
        }
      }

      public var startStationLongitude: Double? {
        get {
          return snapshot["startStationLongitude"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "startStationLongitude")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var stationDetail: StationDetail {
          get {
            return StationDetail(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }
    }
  }
}

public final class TripsQuery: GraphQLQuery {
  public static let operationString =
    "query Trips {\n  trips {\n    __typename\n    ...TripDetail\n  }\n}"

  public static var requestString: String { return operationString.appending(TripDetail.fragmentString) }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("trips", type: .list(.object(Trip.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(trips: [Trip?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "trips": trips.flatMap { (value: [Trip?]) -> [Snapshot?] in value.map { (value: Trip?) -> Snapshot? in value.flatMap { (value: Trip) -> Snapshot in value.snapshot } } }])
    }

    public var trips: [Trip?]? {
      get {
        return (snapshot["trips"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Trip?] in value.map { (value: Snapshot?) -> Trip? in value.flatMap { (value: Snapshot) -> Trip in Trip(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [Trip?]) -> [Snapshot?] in value.map { (value: Trip?) -> Snapshot? in value.flatMap { (value: Trip) -> Snapshot in value.snapshot } } }, forKey: "trips")
      }
    }

    public struct Trip: GraphQLSelectionSet {
      public static let possibleTypes = ["Trip"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("tripduration", type: .scalar(Int.self)),
        GraphQLField("starttime", type: .scalar(String.self)),
        GraphQLField("stoptime", type: .scalar(String.self)),
        GraphQLField("startStationId", type: .scalar(Int.self)),
        GraphQLField("startStationName", type: .scalar(String.self)),
        GraphQLField("startStationLatitude", type: .scalar(Double.self)),
        GraphQLField("startStationLongitude", type: .scalar(Double.self)),
        GraphQLField("endStationId", type: .scalar(Int.self)),
        GraphQLField("endStationName", type: .scalar(String.self)),
        GraphQLField("endStationLatitude", type: .scalar(Double.self)),
        GraphQLField("endStationLongitude", type: .scalar(Double.self)),
        GraphQLField("bikeid", type: .scalar(Int.self)),
        GraphQLField("name_localizedValue0", type: .scalar(String.self)),
        GraphQLField("usertype", type: .scalar(String.self)),
        GraphQLField("gender", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(tripduration: Int? = nil, starttime: String? = nil, stoptime: String? = nil, startStationId: Int? = nil, startStationName: String? = nil, startStationLatitude: Double? = nil, startStationLongitude: Double? = nil, endStationId: Int? = nil, endStationName: String? = nil, endStationLatitude: Double? = nil, endStationLongitude: Double? = nil, bikeid: Int? = nil, nameLocalizedValue0: String? = nil, usertype: String? = nil, gender: Int? = nil) {
        self.init(snapshot: ["__typename": "Trip", "tripduration": tripduration, "starttime": starttime, "stoptime": stoptime, "startStationId": startStationId, "startStationName": startStationName, "startStationLatitude": startStationLatitude, "startStationLongitude": startStationLongitude, "endStationId": endStationId, "endStationName": endStationName, "endStationLatitude": endStationLatitude, "endStationLongitude": endStationLongitude, "bikeid": bikeid, "name_localizedValue0": nameLocalizedValue0, "usertype": usertype, "gender": gender])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var tripduration: Int? {
        get {
          return snapshot["tripduration"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "tripduration")
        }
      }

      public var starttime: String? {
        get {
          return snapshot["starttime"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "starttime")
        }
      }

      public var stoptime: String? {
        get {
          return snapshot["stoptime"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "stoptime")
        }
      }

      public var startStationId: Int? {
        get {
          return snapshot["startStationId"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startStationId")
        }
      }

      public var startStationName: String? {
        get {
          return snapshot["startStationName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "startStationName")
        }
      }

      public var startStationLatitude: Double? {
        get {
          return snapshot["startStationLatitude"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "startStationLatitude")
        }
      }

      public var startStationLongitude: Double? {
        get {
          return snapshot["startStationLongitude"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "startStationLongitude")
        }
      }

      public var endStationId: Int? {
        get {
          return snapshot["endStationId"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "endStationId")
        }
      }

      public var endStationName: String? {
        get {
          return snapshot["endStationName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "endStationName")
        }
      }

      public var endStationLatitude: Double? {
        get {
          return snapshot["endStationLatitude"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "endStationLatitude")
        }
      }

      public var endStationLongitude: Double? {
        get {
          return snapshot["endStationLongitude"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "endStationLongitude")
        }
      }

      public var bikeid: Int? {
        get {
          return snapshot["bikeid"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "bikeid")
        }
      }

      public var nameLocalizedValue0: String? {
        get {
          return snapshot["name_localizedValue0"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name_localizedValue0")
        }
      }

      public var usertype: String? {
        get {
          return snapshot["usertype"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "usertype")
        }
      }

      public var gender: Int? {
        get {
          return snapshot["gender"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "gender")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var tripDetail: TripDetail {
          get {
            return TripDetail(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }
    }
  }
}

public final class StationTripsQuery: GraphQLQuery {
  public static let operationString =
    "query StationTrips($stationId: Int!) {\n  trips(stationId: $stationId) {\n    __typename\n    ...TripDetail\n  }\n}"

  public static var requestString: String { return operationString.appending(TripDetail.fragmentString) }

  public var stationId: Int

  public init(stationId: Int) {
    self.stationId = stationId
  }

  public var variables: GraphQLMap? {
    return ["stationId": stationId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("trips", arguments: ["stationId": GraphQLVariable("stationId")], type: .list(.object(Trip.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(trips: [Trip?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "trips": trips.flatMap { (value: [Trip?]) -> [Snapshot?] in value.map { (value: Trip?) -> Snapshot? in value.flatMap { (value: Trip) -> Snapshot in value.snapshot } } }])
    }

    public var trips: [Trip?]? {
      get {
        return (snapshot["trips"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Trip?] in value.map { (value: Snapshot?) -> Trip? in value.flatMap { (value: Snapshot) -> Trip in Trip(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [Trip?]) -> [Snapshot?] in value.map { (value: Trip?) -> Snapshot? in value.flatMap { (value: Trip) -> Snapshot in value.snapshot } } }, forKey: "trips")
      }
    }

    public struct Trip: GraphQLSelectionSet {
      public static let possibleTypes = ["Trip"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("tripduration", type: .scalar(Int.self)),
        GraphQLField("starttime", type: .scalar(String.self)),
        GraphQLField("stoptime", type: .scalar(String.self)),
        GraphQLField("startStationId", type: .scalar(Int.self)),
        GraphQLField("startStationName", type: .scalar(String.self)),
        GraphQLField("startStationLatitude", type: .scalar(Double.self)),
        GraphQLField("startStationLongitude", type: .scalar(Double.self)),
        GraphQLField("endStationId", type: .scalar(Int.self)),
        GraphQLField("endStationName", type: .scalar(String.self)),
        GraphQLField("endStationLatitude", type: .scalar(Double.self)),
        GraphQLField("endStationLongitude", type: .scalar(Double.self)),
        GraphQLField("bikeid", type: .scalar(Int.self)),
        GraphQLField("name_localizedValue0", type: .scalar(String.self)),
        GraphQLField("usertype", type: .scalar(String.self)),
        GraphQLField("gender", type: .scalar(Int.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(tripduration: Int? = nil, starttime: String? = nil, stoptime: String? = nil, startStationId: Int? = nil, startStationName: String? = nil, startStationLatitude: Double? = nil, startStationLongitude: Double? = nil, endStationId: Int? = nil, endStationName: String? = nil, endStationLatitude: Double? = nil, endStationLongitude: Double? = nil, bikeid: Int? = nil, nameLocalizedValue0: String? = nil, usertype: String? = nil, gender: Int? = nil) {
        self.init(snapshot: ["__typename": "Trip", "tripduration": tripduration, "starttime": starttime, "stoptime": stoptime, "startStationId": startStationId, "startStationName": startStationName, "startStationLatitude": startStationLatitude, "startStationLongitude": startStationLongitude, "endStationId": endStationId, "endStationName": endStationName, "endStationLatitude": endStationLatitude, "endStationLongitude": endStationLongitude, "bikeid": bikeid, "name_localizedValue0": nameLocalizedValue0, "usertype": usertype, "gender": gender])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var tripduration: Int? {
        get {
          return snapshot["tripduration"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "tripduration")
        }
      }

      public var starttime: String? {
        get {
          return snapshot["starttime"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "starttime")
        }
      }

      public var stoptime: String? {
        get {
          return snapshot["stoptime"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "stoptime")
        }
      }

      public var startStationId: Int? {
        get {
          return snapshot["startStationId"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "startStationId")
        }
      }

      public var startStationName: String? {
        get {
          return snapshot["startStationName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "startStationName")
        }
      }

      public var startStationLatitude: Double? {
        get {
          return snapshot["startStationLatitude"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "startStationLatitude")
        }
      }

      public var startStationLongitude: Double? {
        get {
          return snapshot["startStationLongitude"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "startStationLongitude")
        }
      }

      public var endStationId: Int? {
        get {
          return snapshot["endStationId"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "endStationId")
        }
      }

      public var endStationName: String? {
        get {
          return snapshot["endStationName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "endStationName")
        }
      }

      public var endStationLatitude: Double? {
        get {
          return snapshot["endStationLatitude"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "endStationLatitude")
        }
      }

      public var endStationLongitude: Double? {
        get {
          return snapshot["endStationLongitude"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "endStationLongitude")
        }
      }

      public var bikeid: Int? {
        get {
          return snapshot["bikeid"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "bikeid")
        }
      }

      public var nameLocalizedValue0: String? {
        get {
          return snapshot["name_localizedValue0"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name_localizedValue0")
        }
      }

      public var usertype: String? {
        get {
          return snapshot["usertype"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "usertype")
        }
      }

      public var gender: Int? {
        get {
          return snapshot["gender"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "gender")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var tripDetail: TripDetail {
          get {
            return TripDetail(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }
    }
  }
}

public struct StationDetail: GraphQLFragment {
  public static let fragmentString =
    "fragment StationDetail on Station {\n  __typename\n  startStationId\n  startStationName\n  startStationLatitude\n  startStationLongitude\n}"

  public static let possibleTypes = ["Station"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("startStationId", type: .scalar(Int.self)),
    GraphQLField("startStationName", type: .scalar(String.self)),
    GraphQLField("startStationLatitude", type: .scalar(Double.self)),
    GraphQLField("startStationLongitude", type: .scalar(Double.self)),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(startStationId: Int? = nil, startStationName: String? = nil, startStationLatitude: Double? = nil, startStationLongitude: Double? = nil) {
    self.init(snapshot: ["__typename": "Station", "startStationId": startStationId, "startStationName": startStationName, "startStationLatitude": startStationLatitude, "startStationLongitude": startStationLongitude])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var startStationId: Int? {
    get {
      return snapshot["startStationId"] as? Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "startStationId")
    }
  }

  public var startStationName: String? {
    get {
      return snapshot["startStationName"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "startStationName")
    }
  }

  public var startStationLatitude: Double? {
    get {
      return snapshot["startStationLatitude"] as? Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "startStationLatitude")
    }
  }

  public var startStationLongitude: Double? {
    get {
      return snapshot["startStationLongitude"] as? Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "startStationLongitude")
    }
  }
}

public struct TripDetail: GraphQLFragment {
  public static let fragmentString =
    "fragment TripDetail on Trip {\n  __typename\n  tripduration\n  starttime\n  stoptime\n  startStationId\n  startStationName\n  startStationLatitude\n  startStationLongitude\n  endStationId\n  endStationName\n  endStationLatitude\n  endStationLongitude\n  bikeid\n  name_localizedValue0\n  usertype\n  gender\n}"

  public static let possibleTypes = ["Trip"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("tripduration", type: .scalar(Int.self)),
    GraphQLField("starttime", type: .scalar(String.self)),
    GraphQLField("stoptime", type: .scalar(String.self)),
    GraphQLField("startStationId", type: .scalar(Int.self)),
    GraphQLField("startStationName", type: .scalar(String.self)),
    GraphQLField("startStationLatitude", type: .scalar(Double.self)),
    GraphQLField("startStationLongitude", type: .scalar(Double.self)),
    GraphQLField("endStationId", type: .scalar(Int.self)),
    GraphQLField("endStationName", type: .scalar(String.self)),
    GraphQLField("endStationLatitude", type: .scalar(Double.self)),
    GraphQLField("endStationLongitude", type: .scalar(Double.self)),
    GraphQLField("bikeid", type: .scalar(Int.self)),
    GraphQLField("name_localizedValue0", type: .scalar(String.self)),
    GraphQLField("usertype", type: .scalar(String.self)),
    GraphQLField("gender", type: .scalar(Int.self)),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(tripduration: Int? = nil, starttime: String? = nil, stoptime: String? = nil, startStationId: Int? = nil, startStationName: String? = nil, startStationLatitude: Double? = nil, startStationLongitude: Double? = nil, endStationId: Int? = nil, endStationName: String? = nil, endStationLatitude: Double? = nil, endStationLongitude: Double? = nil, bikeid: Int? = nil, nameLocalizedValue0: String? = nil, usertype: String? = nil, gender: Int? = nil) {
    self.init(snapshot: ["__typename": "Trip", "tripduration": tripduration, "starttime": starttime, "stoptime": stoptime, "startStationId": startStationId, "startStationName": startStationName, "startStationLatitude": startStationLatitude, "startStationLongitude": startStationLongitude, "endStationId": endStationId, "endStationName": endStationName, "endStationLatitude": endStationLatitude, "endStationLongitude": endStationLongitude, "bikeid": bikeid, "name_localizedValue0": nameLocalizedValue0, "usertype": usertype, "gender": gender])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var tripduration: Int? {
    get {
      return snapshot["tripduration"] as? Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "tripduration")
    }
  }

  public var starttime: String? {
    get {
      return snapshot["starttime"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "starttime")
    }
  }

  public var stoptime: String? {
    get {
      return snapshot["stoptime"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "stoptime")
    }
  }

  public var startStationId: Int? {
    get {
      return snapshot["startStationId"] as? Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "startStationId")
    }
  }

  public var startStationName: String? {
    get {
      return snapshot["startStationName"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "startStationName")
    }
  }

  public var startStationLatitude: Double? {
    get {
      return snapshot["startStationLatitude"] as? Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "startStationLatitude")
    }
  }

  public var startStationLongitude: Double? {
    get {
      return snapshot["startStationLongitude"] as? Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "startStationLongitude")
    }
  }

  public var endStationId: Int? {
    get {
      return snapshot["endStationId"] as? Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "endStationId")
    }
  }

  public var endStationName: String? {
    get {
      return snapshot["endStationName"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "endStationName")
    }
  }

  public var endStationLatitude: Double? {
    get {
      return snapshot["endStationLatitude"] as? Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "endStationLatitude")
    }
  }

  public var endStationLongitude: Double? {
    get {
      return snapshot["endStationLongitude"] as? Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "endStationLongitude")
    }
  }

  public var bikeid: Int? {
    get {
      return snapshot["bikeid"] as? Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "bikeid")
    }
  }

  public var nameLocalizedValue0: String? {
    get {
      return snapshot["name_localizedValue0"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "name_localizedValue0")
    }
  }

  public var usertype: String? {
    get {
      return snapshot["usertype"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "usertype")
    }
  }

  public var gender: Int? {
    get {
      return snapshot["gender"] as? Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "gender")
    }
  }
}