@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZAP_C_CONNECTION_0 as projection on ZAP_I_CONNECTION_0
{
    key Cuuid,
    key Cnuid,
    Connectionid,
    Countryfr,
    Cityfrom,
    Countryto,
    Cityto,
    Locallastchangedat,
    Lastchangedat,
    /* Associations */
    _carrier : redirected to parent ZAP_C_CARRIER_00
}
