@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Carrier Root Entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZAP_I_CARRIER_00 as select from zap_carrier_00
composition [0..*] of ZAP_I_CONNECTION_0 as _connection
{
key cuuid as Cuuid,
    carrierid as Carrierid,
    name as Name,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    locallastchangedat as Locallastchangedat,
    @Semantics.systemDateTime.lastChangedAt: true
    lastchangedat as Lastchangedat,
    _connection // Make association public
}
