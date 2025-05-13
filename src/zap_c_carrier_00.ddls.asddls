@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZAP_C_CARRIER_00 
provider contract transactional_query
as projection on ZAP_I_CARRIER_00

{
    key Cuuid,
    Carrierid,
    Name,
    Locallastchangedat,
    Lastchangedat,
    /* Associations */
    _connection : redirected to composition child ZAP_C_CONNECTION_0
}
