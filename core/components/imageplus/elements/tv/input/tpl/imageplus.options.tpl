<div id="tv-input-properties-form{$tv}"></div>
<script type="text/javascript">
    // <![CDATA[
    {literal}
    var params = {
        {/literal}{foreach from=$params key=k item=v name='p'}
        '{$k}': '{$v|escape:"javascript"}'{if NOT $smarty.foreach.p.last}, {/if}
        {/foreach}{literal}
    };
    var oc = {
        'change': {
            fn: function () {
                Ext.getCmp('modx-panel-tv').markDirty();
            }, scope: this
        }
    };
    MODx.load({
        xtype: 'panel',
        layout: 'form',
        autoHeight: true,
        cls: 'form-with-labels',
        border: false,
        labelAlign: 'top',
        items: [{
            layout: 'column',
            items: [{
                columnWidth: .5,
                layout: 'form',
                labelAlign: 'top',
                items: [{
                    xtype: 'textfield',
                    fieldLabel: _('imageplus.targetwidth'),
                    name: 'inopt_targetWidth',
                    id: 'inopt_targetWidth{/literal}{$tv}{literal}',
                    value: params['targetWidth'] || '',
                    anchor: '100%',
                    listeners: oc
                }, {
                    xtype: MODx.expandHelp ? 'label' : 'hidden',
                    forId: 'inopt_targetWidth{/literal}{$tv}{literal}',
                    html: _('imageplus.targetwidth_desc'),
                    cls: 'desc-under'
                }, {
                    xtype: 'textfield',
                    fieldLabel: _('imageplus.targetheight'),
                    name: 'inopt_targetHeight',
                    id: 'inopt_targetHeight{/literal}{$tv}{literal}',
                    value: params['targetHeight'] || '',
                    anchor: '100%',
                    listeners: oc
                }, {
                    xtype: MODx.expandHelp ? 'label' : 'hidden',
                    forId: 'inopt_targetHeight{/literal}{$tv}{literal}',
                    html: _('imageplus.targetheight_desc'),
                    cls: 'desc-under'
                }]
            }, {
                columnWidth: .5,
                layout: 'form',
                labelAlign: 'top',
                items: [{
                    xtype: 'textfield',
                    fieldLabel: _('imageplus.targetRatio'),
                    name: 'inopt_targetRatio',
                    id: 'inopt_targetRatio{/literal}{$tv}{literal}',
                    value: params['targetRatio'] || '',
                    anchor: '100%',
                    listeners: oc
                }, {
                    xtype: MODx.expandHelp ? 'label' : 'hidden',
                    forId: 'inopt_targetRatio{/literal}{$tv}{literal}',
                    html: _('imageplus.targetRatio_desc'),
                    cls: 'desc-under'
                }, {
                    xtype: 'textfield',
                    fieldLabel: _('imageplus.thumbnailWidth'),
                    name: 'inopt_thumbnailWidth',
                    id: 'inopt_thumbnailWidth{/literal}{$tv}{literal}',
                    value: params['thumbnailWidth'] || '',
                    anchor: '100%',
                    listeners: oc
                }, {
                    xtype: MODx.expandHelp ? 'label' : 'hidden',
                    forId: 'inopt_thumbnailWidth{/literal}{$tv}{literal}',
                    html: _('imageplus.thumbnailWidth_desc'),
                    cls: 'desc-under'
                }]
            }]
        }, {
            layout: 'column',
            items: [{
                columnWidth: .33,
                layout: 'form',
                labelAlign: 'top',
                items: [{
                    xtype: 'combo-boolean',
                    fieldLabel: _('imageplus.allowAltTag'),
                    name: 'inopt_allowAltTag',
                    hiddenName: 'inopt_allowAltTag',
                    id: 'inopt_allowAltTag{/literal}{$tv}{literal}',
                    value: !(params['allowAltTag'] == 0 || params['allowAltTag'] == 'false'),
                    labelAlign: 'left',
                    anchor: '100%',
                    listeners: oc
                }, {
                    xtype: MODx.expandHelp ? 'label' : 'hidden',
                    forId: 'inopt_allowAltTag{/literal}{$tv}{literal}',
                    html: _('imageplus.allowAltTag_desc'),
                    cls: 'desc-under'
                }]
            }, {
                columnWidth: .33,
                layout: 'form',
                labelAlign: 'top',
                items: [{
                    xtype: 'combo-boolean',
                    fieldLabel: _('imageplus.allowCaption'),
                    name: 'inopt_allowCaption',
                    hiddenName: 'inopt_allowCaption',
                    id: 'inopt_allowCaption{/literal}{$tv}{literal}',
                    value: (params['allowCaption'] == 1 || params['allowCaption'] == 'true'),
                    labelAlign: 'left',
                    anchor: '100%',
                    listeners: oc
                }, {
                    xtype: MODx.expandHelp ? 'label' : 'hidden',
                    forId: 'inopt_allowCaption{/literal}{$tv}{literal}',
                    html: _('imageplus.allowCaption_desc'),
                    cls: 'desc-under'
                }]
            }, {
                columnWidth: .33,
                layout: 'form',
                labelAlign: 'top',
                items: [{
                    xtype: 'combo-boolean',
                    fieldLabel: _('imageplus.allowCredits'),
                    name: 'inopt_allowCredits',
                    hiddenName: 'inopt_allowCredits',
                    id: 'inopt_allowCredits{/literal}{$tv}{literal}',
                    value: (params['allowCredits'] == 1 || params['allowCredits'] == 'true'),
                    labelAlign: 'left',
                    anchor: '100%',
                    listeners: oc
                }, {
                    xtype: MODx.expandHelp ? 'label' : 'hidden',
                    forId: 'inopt_allowCredits{/literal}{$tv}{literal}',
                    html: _('imageplus.allowCredits_desc'),
                    cls: 'desc-under'
                }]
            }]
        }],
        renderTo: 'tv-input-properties-form{/literal}{$tv}{literal}'
    });
    // ]]>
</script>
{/literal}
