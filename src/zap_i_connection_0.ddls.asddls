@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Connection Child Entity'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZAP_I_CONNECTION_0 as select from zap_connection_0
association to parent ZAP_I_CARRIER_00 as _carrier
on $projection.Cuuid = _carrier.Cuuid
{
key cuuid as Cuuid,
key cnuid as Cnuid,
    connectionid as Connectionid,
    countryfr as Countryfr,
    cityfrom as Cityfrom,
    countryto as Countryto,
    cityto as Cityto,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    locallastchangedat as Locallastchangedat,
    @Semantics.systemDateTime.lastChangedAt: true
    lastchangedat as Lastchangedat,
    _carrier // Make association public
}
