{$app->autoloadScripsAjaxBefore()}
{addjs file='%main%/ormtype/rs.fieldgeopoint.js'}
<div class="rs-field-geo-point">
    <input type="hidden" class="rs-input-latitude" name="{$field->getFormName()}" value="{$field->get()|default:55.755819}">
    <input type="hidden" class="rs-input-longitude" name="{$field->getFieldLongitudeName()}" value="{$elem[$field->getFieldLongitudeName()]|default:37.617644}">
    <div class="rs-field-geo-point-map" style="width: 100%; height: 400px"></div>
</div>
{$app->autoloadScripsAjaxAfter()}