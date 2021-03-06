as yet unclassified
specBaseRFC6733
	^ '@id	0
@name	base_rfc6733

@inherits	ietf-avps

@messages
Capabilities-Exchange-Request ::= <Diameter Header: 257, REQ>
      { Origin-Host }
      { Origin-Realm }
 1*   { Host-IP-Address }
      { Vendor-Id }
      { Product-Name }
      [ Origin-State-Id ]
  *   [ Supported-Vendor-Id ]
  *   [ Auth-Application-Id ]
  *   [ Inband-Security-Id ]
  *   [ Acct-Application-Id ]
  *   [ Vendor-Specific-Application-Id ]
      [ Firmware-Revision ]
  *   [ AVP ]

Capabilities-Exchange-Answer ::= <Diameter Header: 257>
      { Result-Code }
      { Origin-Host }
      { Origin-Realm }
 1*   { Host-IP-Address }
      { Vendor-Id }
      { Product-Name }
      [ Origin-State-Id ]
      [ Error-Message ]
      [ Failed-AVP ]
  *   [ Supported-Vendor-Id ]
  *   [ Auth-Application-Id ]
  *   [ Inband-Security-Id ]
  *   [ Acct-Application-Id ]
  *   [ Vendor-Specific-Application-Id ]
      [ Firmware-Revision ]
  *   [ AVP ]

Re-Auth-Request ::= <Diameter Header: 258, REQ, PXY>
      < Session-Id >
      { Origin-Host }
      { Origin-Realm }
      { Destination-Realm }
      { Destination-Host }
      { Auth-Application-Id }
      { Re-Auth-Request-Type }
      [ User-Name ]
      [ Origin-State-Id ]
  *   [ Proxy-Info ]
  *   [ Route-Record ]
  *   [ AVP ]

Re-Auth-Answer ::= <Diameter Header: 258, PXY>
      < Session-Id >
      { Result-Code }
      { Origin-Host }
      { Origin-Realm }
      [ User-Name ]
      [ Origin-State-Id ]
      [ Error-Message ]
      [ Error-Reporting-Host ]
      [ Failed-AVP ]
  *   [ Redirect-Host ]
      [ Redirect-Host-Usage ]
      [ Redirect-Max-Cache-Time ]
  *   [ Proxy-Info ]
  *   [ AVP ]

Accounting-Request ::= <Diameter Header: 271, REQ, PXY>
      < Session-Id >
      { Origin-Host }
      { Origin-Realm }
      { Destination-Realm }
      { Accounting-Record-Type }
      { Accounting-Record-Number }
      [ Acct-Application-Id ]
      [ Vendor-Specific-Application-Id ]
      [ User-Name ]
      [ Destination-Host ]
      [ Accounting-Sub-Session-Id ]
      [ Acct-Session-Id ]
      [ Acct-Multi-Session-Id ]
      [ Acct-Interim-Interval ]
      [ Accounting-Realtime-Required ]
      [ Origin-State-Id ]
      [ Event-Timestamp ]
  *   [ Proxy-Info ]
  *   [ Route-Record ]
  *   [ AVP ]

Accounting-Answer ::= <Diameter Header: 271, PXY>
      < Session-Id >
      { Result-Code }
      { Origin-Host }
      { Origin-Realm }
      { Accounting-Record-Type }
      { Accounting-Record-Number }
      [ Acct-Application-Id ]
      [ Vendor-Specific-Application-Id ]
      [ User-Name ]
      [ Accounting-Sub-Session-Id ]
      [ Acct-Session-Id ]
      [ Acct-Multi-Session-Id ]
      [ Error-Message ]
      [ Error-Reporting-Host ]
      [ Failed-AVP ]
      [ Acct-Interim-Interval ]
      [ Accounting-Realtime-Required ]
      [ Origin-State-Id ]
      [ Event-Timestamp ]
  *   [ Proxy-Info ]
  *   [ AVP ]

Abort-Session-Request ::= <Diameter Header: 274, REQ, PXY>
      < Session-Id >
      { Origin-Host }
      { Origin-Realm }
      { Destination-Realm }
      { Destination-Host }
      { Auth-Application-Id }
      [ User-Name ]
      [ Origin-State-Id ]
  *   [ Proxy-Info ]
  *   [ Route-Record ]
  *   [ AVP ]

Abort-Session-Answer ::= <Diameter Header: 274, PXY>
      < Session-Id >
      { Result-Code }
      { Origin-Host }
      { Origin-Realm }
      [ User-Name ]
      [ Origin-State-Id ]
      [ Error-Message ]
      [ Error-Reporting-Host ]
      [ Failed-AVP ]
  *   [ Redirect-Host ]
      [ Redirect-Host-Usage ]
      [ Redirect-Max-Cache-Time ]
  *   [ Proxy-Info ]
  *   [ AVP ]

Session-Termination-Request ::= <Diameter Header: 275, REQ, PXY>
      < Session-Id >
      { Origin-Host }
      { Origin-Realm }
      { Destination-Realm }
      { Auth-Application-Id }
      { Termination-Cause }
      [ User-Name ]
      [ Destination-Host ]
  *   [ Class ]
      [ Origin-State-Id ]
  *   [ Proxy-Info ]
  *   [ Route-Record ]
  *   [ AVP ]

Session-Termination-Answer ::= <Diameter Header: 275, PXY>
      < Session-Id >
      { Result-Code }
      { Origin-Host }
      { Origin-Realm }
      [ User-Name ]
  *   [ Class ]
      [ Error-Message ]
      [ Error-Reporting-Host ]
      [ Failed-AVP ]
      [ Origin-State-Id ]
  *   [ Redirect-Host ]
      [ Redirect-Host-Usage ]
      [ Redirect-Max-Cache-Time ]
  *   [ Proxy-Info ]
  *   [ AVP ]

Device-Watchdog-Request ::= <Diameter Header: 280, REQ>
      { Origin-Host }
      { Origin-Realm }
      [ Origin-State-Id ]
  *   [ AVP ]

Device-Watchdog-Answer ::= <Diameter Header: 280>
      { Result-Code }
      { Origin-Host }
      { Origin-Realm }
      [ Error-Message ]
      [ Failed-AVP ]
      [ Origin-State-Id ]
  *   [ AVP ]

Disconnect-Peer-Request ::= <Diameter Header: 282, REQ>
      { Origin-Host }
      { Origin-Realm }
      { Disconnect-Cause }
  *   [ AVP ]

Disconnect-Peer-Answer ::= <Diameter Header: 282>
      { Result-Code }
      { Origin-Host }
      { Origin-Realm }
      [ Error-Message ]
      [ Failed-AVP ]
  *   [ AVP ]
'
	