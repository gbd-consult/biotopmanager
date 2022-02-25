<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis readOnly="1" minScale="1e+08" simplifyDrawingTol="1" simplifyAlgorithm="0" simplifyMaxScale="1" simplifyLocal="1" version="3.4.2-Madeira" hasScaleBasedVisibilityFlag="0" simplifyDrawingHints="1" labelsEnabled="1" styleCategories="AllStyleCategories" maxScale="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 type="singleSymbol" forceraster="0" enableorderby="1" symbollevels="0">
    <symbols>
      <symbol clip_to_extent="1" type="fill" alpha="0.33" name="0">
        <layer enabled="1" class="SimpleFill" pass="0" locked="0">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="150,150,150,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="247,247,247,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
    <orderby>
      <orderByClause asc="0" nullsFirst="1">distance(  $geometry,  translate(    @map_extent_center,    1000 * @map_extent_width * cos( radians( @qgis_25d_angle + 180 ) ),    1000 * @map_extent_width * sin( radians( @qgis_25d_angle + 180 ) )  ))</orderByClause>
    </orderby>
  </renderer-v2>
  <labeling type="simple">
    <settings>
      <text-style fontStrikeout="0" fontItalic="0" fontSize="10" fontUnderline="0" blendMode="0" isExpression="0" fontFamily="Noto Sans" previewBkgrdColor="#ffffff" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontCapitals="0" fieldName="biotoptyp2_art_nr" fontSizeUnit="Point" fontWeight="50" textOpacity="1" fontWordSpacing="0" fontLetterSpacing="0" multilineHeight="1" textColor="0,0,0,255" namedStyle="Regular" useSubstitutions="0">
        <text-buffer bufferDraw="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="255,255,255,255" bufferOpacity="1" bufferJoinStyle="128" bufferBlendMode="0" bufferSize="1" bufferNoFill="1" bufferSizeUnits="MM"/>
        <background shapeType="0" shapeOffsetX="0" shapeRotation="0" shapeSizeUnit="MM" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeBlendMode="0" shapeRadiiUnit="MM" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeRadiiX="0" shapeSVGFile="" shapeRotationType="0" shapeSizeType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeX="0" shapeJoinStyle="64" shapeOffsetUnit="MM" shapeFillColor="255,255,255,255" shapeOffsetY="0" shapeBorderColor="128,128,128,255" shapeSizeY="0" shapeDraw="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0"/>
        <shadow shadowOffsetUnit="MM" shadowUnder="0" shadowOffsetGlobal="1" shadowBlendMode="6" shadowOffsetDist="1" shadowOffsetAngle="135" shadowRadiusUnit="MM" shadowOpacity="0.7" shadowColor="0,0,0,255" shadowScale="100" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowDraw="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0"/>
        <substitutions/>
      </text-style>
      <text-format leftDirectionSymbol="&lt;" placeDirectionSymbol="0" multilineAlign="4294967295" plussign="0" wrapChar="" reverseDirectionSymbol="0" formatNumbers="0" addDirectionSymbol="0" rightDirectionSymbol=">" autoWrapLength="0" useMaxLineLengthForAutoWrap="1" decimals="3"/>
      <placement centroidInside="0" yOffset="0" placement="0" centroidWhole="0" distUnits="MM" placementFlags="10" quadOffset="4" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" distMapUnitScale="3x:0,0,0,0,0,0" offsetType="0" maxCurvedCharAngleIn="25" maxCurvedCharAngleOut="-25" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceUnits="MM" dist="0" rotationAngle="0" offsetUnits="MM" priority="5" xOffset="0" repeatDistance="0" preserveRotation="1"/>
      <rendering labelPerPart="0" fontMaxPixelSize="10000" zIndex="0" obstacleType="0" minFeatureSize="0" obstacle="1" fontMinPixelSize="3" mergeLines="0" scaleMax="10000" scaleMin="0" upsidedownLabels="0" fontLimitPixelSize="0" obstacleFactor="1" maxNumLabels="2000" limitNumLabels="0" displayAll="0" scaleVisibility="1" drawLabels="1"/>
      <dd_properties>
        <Option type="Map">
          <Option type="QString" value="" name="name"/>
          <Option name="properties"/>
          <Option type="QString" value="collection" name="type"/>
        </Option>
      </dd_properties>
    </settings>
  </labeling>
  <customproperties>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Pie">
    <DiagramCategory lineSizeScale="3x:0,0,0,0,0,0" labelPlacementMethod="XHeight" barWidth="5" penAlpha="255" enabled="0" lineSizeType="MM" minScaleDenominator="0" scaleDependency="Area" width="15" backgroundColor="#ffffff" penColor="#000000" penWidth="0" rotationOffset="270" scaleBasedVisibility="0" sizeType="MM" maxScaleDenominator="1e+08" diagramOrientation="Up" height="15" sizeScale="3x:0,0,0,0,0,0" opacity="1" minimumSize="0" backgroundAlpha="255">
      <fontProperties description="Noto Sans,10,-1,0,50,0,0,0,0,0,Regular" style="Regular"/>
      <attribute color="#6830e8" field="&quot;flaeche&quot;" label="flaeche"/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings zIndex="0" placement="1" showAll="1" dist="0" priority="0" linePlacementFlags="18" obstacle="0">
    <properties>
      <Option type="Map">
        <Option type="QString" value="" name="name"/>
        <Option name="properties"/>
        <Option type="QString" value="collection" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="ogc_fid">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="identity">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="objnr_sbk">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="unr">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="ausbildung">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="pflege_zustand">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="pflege_entwicklung">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="pflege_bedarf">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option type="QString" value="true" name="CheckedState"/>
            <Option type="QString" value="false" name="UncheckedState"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="pflege_rueckstand">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="pflege">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="AllowMulti"/>
            <Option type="bool" value="true" name="AllowNull"/>
            <Option type="QString" value="" name="FilterExpression"/>
            <Option type="QString" value="id" name="Key"/>
            <Option type="QString" value="massnahmen_0ad2251a_dbc4_4590_b2bf_e9eb79deccc2" name="Layer"/>
            <Option type="int" value="2" name="NofColumns"/>
            <Option type="bool" value="false" name="OrderByValue"/>
            <Option type="bool" value="false" name="UseCompleter"/>
            <Option type="QString" value="beschreibung" name="Value"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="bt_code">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="wert">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="schutzstatus">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="AllowMulti"/>
            <Option type="bool" value="false" name="AllowNull"/>
            <Option type="QString" value="" name="FilterExpression"/>
            <Option type="QString" value="id" name="Key"/>
            <Option type="QString" value="schutzstatus_0e433610_7844_4042_98b8_ce047c7d5f15" name="Layer"/>
            <Option type="int" value="1" name="NofColumns"/>
            <Option type="bool" value="false" name="OrderByValue"/>
            <Option type="bool" value="false" name="UseCompleter"/>
            <Option type="QString" value="wert" name="Value"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="biotopkuerzel">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="erhaltungszustand">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="AllowMulti"/>
            <Option type="bool" value="false" name="AllowNull"/>
            <Option type="QString" value="" name="FilterExpression"/>
            <Option type="QString" value="id" name="Key"/>
            <Option type="QString" value="erhaltungszustand_a9c1c759_7a06_4976_ae03_6f52d8ab1aac" name="Layer"/>
            <Option type="int" value="1" name="NofColumns"/>
            <Option type="bool" value="false" name="OrderByValue"/>
            <Option type="bool" value="false" name="UseCompleter"/>
            <Option type="QString" value="wert" name="Value"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="geprueft">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option type="QString" value="true" name="CheckedState"/>
            <Option type="QString" value="false" name="UncheckedState"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="biotoptyp_art_nr">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="AllowMulti"/>
            <Option type="bool" value="false" name="AllowNull"/>
            <Option type="QString" value="" name="FilterExpression"/>
            <Option type="QString" value="id_biot_alt" name="Key"/>
            <Option type="QString" value="biotoptypen_08b96905_6629_43e7_a278_f6a633a8bee3" name="Layer"/>
            <Option type="int" value="1" name="NofColumns"/>
            <Option type="bool" value="false" name="OrderByValue"/>
            <Option type="bool" value="false" name="UseCompleter"/>
            <Option type="QString" value="name_2002" name="Value"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="biotoptyp2_art_nr">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="AllowMulti"/>
            <Option type="bool" value="false" name="AllowNull"/>
            <Option type="QString" value="" name="FilterExpression"/>
            <Option type="QString" value="nummer" name="Key"/>
            <Option type="QString" value="biotoptypen_08b96905_6629_43e7_a278_f6a633a8bee3" name="Layer"/>
            <Option type="int" value="1" name="NofColumns"/>
            <Option type="bool" value="false" name="OrderByValue"/>
            <Option type="bool" value="false" name="UseCompleter"/>
            <Option type="QString" value="name_2012" name="Value"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="waldbiotop">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option type="QString" value="true" name="CheckedState"/>
            <Option type="QString" value="false" name="UncheckedState"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="objnr_landkreise">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="tk25">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="name">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="status">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="flaeche">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="num_geom">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="objnr">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="umfang">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="false" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="beschreibung">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="erfassung_wann">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="true" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="erfassung_wer">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Description" value="" type="QString"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="kartierer" type="QString"/>
            <Option name="Layer" value="kartierer_87e85892_13cc_46fc_8304_06f5c6597a2e" type="QString"/>
            <Option name="LayerName" value="kartierer" type="QString"/>
            <Option name="LayerProviderName" value="postgres" type="QString"/>
            <Option name="LayerSource" value="dbname='biotope' host=localhost port=5432 user='biotope_admin' key='id' checkPrimaryKeyUnicity='1' table=&quot;referenzen&quot;.&quot;kartierer&quot;" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="kartierer" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="erfassung_bemerkung">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="bearbeitung_wann">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="true" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="bearbeitung_wer">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Description" value="" type="QString"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="kartierer" type="QString"/>
            <Option name="Layer" value="kartierer_87e85892_13cc_46fc_8304_06f5c6597a2e" type="QString"/>
            <Option name="LayerName" value="kartierer" type="QString"/>
            <Option name="LayerProviderName" value="postgres" type="QString"/>
            <Option name="LayerSource" value="dbname='biotope' host=localhost port=5432 user='biotope_admin' key='id' checkPrimaryKeyUnicity='1' table=&quot;referenzen&quot;.&quot;kartierer&quot;" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="kartierer" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="bearbeitung_bemerkung">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="loeschung_wann">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="true" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="loeschung_wer">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Description" value="" type="QString"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="kartierer" type="QString"/>
            <Option name="Layer" value="kartierer_87e85892_13cc_46fc_8304_06f5c6597a2e" type="QString"/>
            <Option name="LayerName" value="kartierer" type="QString"/>
            <Option name="LayerProviderName" value="postgres" type="QString"/>
            <Option name="LayerSource" value="dbname='biotope' host=localhost port=5432 user='biotope_admin' key='id' checkPrimaryKeyUnicity='1' table=&quot;referenzen&quot;.&quot;kartierer&quot;" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="kartierer" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="loeschung_bemerkung">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="bekanntmachung_wann">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="allow_null"/>
            <Option type="bool" value="true" name="calendar_popup"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="display_format"/>
            <Option type="QString" value="yyyy-MM-dd HH:mm:ss" name="field_format"/>
            <Option type="bool" value="false" name="field_iso_format"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="bekanntmachung_wer">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Description" value="" type="QString"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="kartierer" type="QString"/>
            <Option name="Layer" value="kartierer_87e85892_13cc_46fc_8304_06f5c6597a2e" type="QString"/>
            <Option name="LayerName" value="kartierer" type="QString"/>
            <Option name="LayerProviderName" value="postgres" type="QString"/>
            <Option name="LayerSource" value="dbname='biotope' host=localhost port=5432 user='biotope_admin' key='id' checkPrimaryKeyUnicity='1' table=&quot;referenzen&quot;.&quot;kartierer&quot;" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="kartierer" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="bekanntmachung_bemerkung">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="IsMultiline"/>
            <Option type="bool" value="false" name="UseHtml"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="tiere">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="pflanzen">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="pilze">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="stoerungen">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="beeintraechtigung_ids">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option type="bool" value="true" name="AllowMulti"/>
            <Option type="bool" value="true" name="AllowNull"/>
            <Option type="QString" value="" name="FilterExpression"/>
            <Option type="QString" value="id" name="Key"/>
            <Option type="QString" value="beeintraechtigungen_455b4d81_261d_45f4_b028_ef71bf733ca8" name="Layer"/>
            <Option type="int" value="2" name="NofColumns"/>
            <Option type="bool" value="false" name="OrderByValue"/>
            <Option type="bool" value="false" name="UseCompleter"/>
            <Option type="QString" value="beeintraechtigungen" name="Value"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="gefahr_historisch">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="modtime">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="action">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="revision">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" name="" field="ogc_fid"/>
    <alias index="1" name="" field="identity"/>
    <alias index="2" name="" field="objnr_sbk"/>
    <alias index="3" name="" field="unr"/>
    <alias index="4" name="Ausbildung" field="ausbildung"/>
    <alias index="5" name="Pflege Zustand" field="pflege_zustand"/>
    <alias index="6" name="Hinweise zur Pflege" field="pflege_entwicklung"/>
    <alias index="7" name="Pflegebedarf" field="pflege_bedarf"/>
    <alias index="8" name="" field="pflege_rueckstand"/>
    <alias index="9" name="" field="pflege"/>
    <alias index="10" name="" field="bt_code"/>
    <alias index="11" name="Wertbestimmend" field="wert"/>
    <alias index="12" name="Schutzstatus" field="schutzstatus"/>
    <alias index="13" name="Biotopkürzel" field="biotopkuerzel"/>
    <alias index="14" name="Erhaltungszustand" field="erhaltungszustand"/>
    <alias index="15" name="Geprüft" field="geprueft"/>
    <alias index="16" name="Biotoptyp alt" field="biotoptyp_art_nr"/>
    <alias index="17" name="Biotoptyp" field="biotoptyp2_art_nr"/>
    <alias index="18" name="Waldbiotop" field="waldbiotop"/>
    <alias index="19" name="" field="objnr_landkreise"/>
    <alias index="20" name="TK 25" field="tk25"/>
    <alias index="21" name="Name des Biotops" field="name"/>
    <alias index="22" name="Status" field="status"/>
    <alias index="23" name="Fläche" field="flaeche"/>
    <alias index="24" name="Anzahl Geometrien" field="num_geom"/>
    <alias index="25" name="" field="objnr"/>
    <alias index="26" name="Umfang" field="umfang"/>
    <alias index="27" name="Beschreibung" field="beschreibung"/>
    <alias index="28" name="Kartierungsdatum" field="erfassung_wann"/>
    <alias index="29" name="Kartierer" field="erfassung_wer"/>
    <alias index="30" name="Herkunft Daten" field="erfassung_bemerkung"/>
    <alias index="31" name="Datum der Bearbeitung" field="bearbeitung_wann"/>
    <alias index="32" name="Bearbeiter" field="bearbeitung_wer"/>
    <alias index="33" name="Datenstand Bearbeitung" field="bearbeitung_bemerkung"/>
    <alias index="34" name="Datum der Archivierung" field="loeschung_wann"/>
    <alias index="35" name="archiviert von" field="loeschung_wer"/>
    <alias index="36" name="Grund der Archivierung" field="loeschung_bemerkung"/>
    <alias index="37" name="Bekanntmachungsdatum" field="bekanntmachung_wann"/>
    <alias index="38" name="Bearbeiter" field="bekanntmachung_wer"/>
    <alias index="39" name="Bemerkungen zur Bekanntmachung" field="bekanntmachung_bemerkung"/>
    <alias index="40" name="Tiere" field="tiere"/>
    <alias index="41" name="Pflanzen" field="pflanzen"/>
    <alias index="42" name="Pilze" field="pilze"/>
    <alias index="43" name="Störungen" field="stoerungen"/>
    <alias index="44" name="Beeinträchtigungen" field="beeintraechtigung_ids"/>
    <alias index="45" name="" field="gefahr_historisch"/>
    <alias index="46" name="" field="modtime"/>
    <alias index="47" name="" field="action"/>
    <alias index="48" name="" field="revision"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" applyOnUpdate="0" field="ogc_fid"/>
    <default expression="" applyOnUpdate="0" field="identity"/>
    <default expression="" applyOnUpdate="0" field="objnr_sbk"/>
    <default expression="" applyOnUpdate="0" field="unr"/>
    <default expression="" applyOnUpdate="0" field="ausbildung"/>
    <default expression="" applyOnUpdate="0" field="pflege_zustand"/>
    <default expression="" applyOnUpdate="0" field="pflege_entwicklung"/>
    <default expression="" applyOnUpdate="0" field="pflege_bedarf"/>
    <default expression="" applyOnUpdate="0" field="pflege_rueckstand"/>
    <default expression="" applyOnUpdate="0" field="pflege"/>
    <default expression="" applyOnUpdate="0" field="bt_code"/>
    <default expression="" applyOnUpdate="0" field="wert"/>
    <default expression="" applyOnUpdate="0" field="schutzstatus"/>
    <default expression="" applyOnUpdate="0" field="biotopkuerzel"/>
    <default expression="" applyOnUpdate="0" field="erhaltungszustand"/>
    <default expression="" applyOnUpdate="0" field="geprueft"/>
    <default expression="" applyOnUpdate="0" field="biotoptyp_art_nr"/>
    <default expression="" applyOnUpdate="0" field="biotoptyp2_art_nr"/>
    <default expression="" applyOnUpdate="0" field="waldbiotop"/>
    <default expression="" applyOnUpdate="0" field="objnr_landkreise"/>
    <default expression="" applyOnUpdate="0" field="tk25"/>
    <default expression="" applyOnUpdate="0" field="name"/>
    <default expression="" applyOnUpdate="0" field="status"/>
    <default expression=" $area " applyOnUpdate="0" field="flaeche"/>
    <default expression="" applyOnUpdate="0" field="num_geom"/>
    <default expression="" applyOnUpdate="0" field="objnr"/>
    <default expression=" $perimeter " applyOnUpdate="0" field="umfang"/>
    <default expression="" applyOnUpdate="0" field="beschreibung"/>
    <default expression="" applyOnUpdate="0" field="erfassung_wann"/>
    <default expression="" applyOnUpdate="0" field="erfassung_wer"/>
    <default expression="" applyOnUpdate="0" field="erfassung_bemerkung"/>
    <default expression="" applyOnUpdate="0" field="bearbeitung_wann"/>
    <default expression="" applyOnUpdate="0" field="bearbeitung_wer"/>
    <default expression="" applyOnUpdate="0" field="bearbeitung_bemerkung"/>
    <default expression="" applyOnUpdate="0" field="loeschung_wann"/>
    <default expression="" applyOnUpdate="0" field="loeschung_wer"/>
    <default expression="" applyOnUpdate="0" field="loeschung_bemerkung"/>
    <default expression="" applyOnUpdate="0" field="bekanntmachung_wann"/>
    <default expression="" applyOnUpdate="0" field="bekanntmachung_wer"/>
    <default expression="" applyOnUpdate="0" field="bekanntmachung_bemerkung"/>
    <default expression="" applyOnUpdate="0" field="tiere"/>
    <default expression="" applyOnUpdate="0" field="pflanzen"/>
    <default expression="" applyOnUpdate="0" field="pilze"/>
    <default expression="" applyOnUpdate="0" field="stoerungen"/>
    <default expression="" applyOnUpdate="0" field="beeintraechtigung_ids"/>
    <default expression="" applyOnUpdate="0" field="gefahr_historisch"/>
    <default expression="" applyOnUpdate="0" field="modtime"/>
    <default expression="" applyOnUpdate="0" field="action"/>
    <default expression="" applyOnUpdate="0" field="revision"/>
  </defaults>
  <constraints>
    <constraint constraints="3" notnull_strength="1" field="ogc_fid" unique_strength="1" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="identity" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="objnr_sbk" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="unr" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="ausbildung" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="pflege_zustand" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="pflege_entwicklung" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="pflege_bedarf" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="pflege_rueckstand" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="pflege" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="bt_code" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="wert" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="schutzstatus" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="biotopkuerzel" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="erhaltungszustand" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="geprueft" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="biotoptyp_art_nr" unique_strength="0" exp_strength="0"/>
    <constraint constraints="1" notnull_strength="2" field="biotoptyp2_art_nr" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="waldbiotop" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="objnr_landkreise" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="tk25" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="name" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="status" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="flaeche" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="num_geom" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="objnr" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="umfang" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="beschreibung" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="erfassung_wann" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="erfassung_wer" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="erfassung_bemerkung" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="bearbeitung_wann" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="bearbeitung_wer" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="bearbeitung_bemerkung" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="loeschung_wann" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="loeschung_wer" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="loeschung_bemerkung" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="bekanntmachung_wann" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="bekanntmachung_wer" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="bekanntmachung_bemerkung" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="tiere" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="pflanzen" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="pilze" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="stoerungen" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="beeintraechtigung_ids" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="gefahr_historisch" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="modtime" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="action" unique_strength="0" exp_strength="0"/>
    <constraint constraints="3" notnull_strength="1" field="revision" unique_strength="1" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="ogc_fid"/>
    <constraint desc="" exp="" field="identity"/>
    <constraint desc="" exp="" field="objnr_sbk"/>
    <constraint desc="" exp="" field="unr"/>
    <constraint desc="" exp="" field="ausbildung"/>
    <constraint desc="" exp="" field="pflege_zustand"/>
    <constraint desc="" exp="" field="pflege_entwicklung"/>
    <constraint desc="" exp="" field="pflege_bedarf"/>
    <constraint desc="" exp="" field="pflege_rueckstand"/>
    <constraint desc="" exp="" field="pflege"/>
    <constraint desc="" exp="" field="bt_code"/>
    <constraint desc="" exp="" field="wert"/>
    <constraint desc="" exp="" field="schutzstatus"/>
    <constraint desc="" exp="" field="biotopkuerzel"/>
    <constraint desc="" exp="" field="erhaltungszustand"/>
    <constraint desc="" exp="" field="geprueft"/>
    <constraint desc="" exp="" field="biotoptyp_art_nr"/>
    <constraint desc="" exp="" field="biotoptyp2_art_nr"/>
    <constraint desc="" exp="" field="waldbiotop"/>
    <constraint desc="" exp="" field="objnr_landkreise"/>
    <constraint desc="" exp="" field="tk25"/>
    <constraint desc="" exp="" field="name"/>
    <constraint desc="" exp="" field="status"/>
    <constraint desc="" exp="" field="flaeche"/>
    <constraint desc="" exp="" field="num_geom"/>
    <constraint desc="" exp="" field="objnr"/>
    <constraint desc="" exp="" field="umfang"/>
    <constraint desc="" exp="" field="beschreibung"/>
    <constraint desc="" exp="" field="erfassung_wann"/>
    <constraint desc="" exp="" field="erfassung_wer"/>
    <constraint desc="" exp="" field="erfassung_bemerkung"/>
    <constraint desc="" exp="" field="bearbeitung_wann"/>
    <constraint desc="" exp="" field="bearbeitung_wer"/>
    <constraint desc="" exp="" field="bearbeitung_bemerkung"/>
    <constraint desc="" exp="" field="loeschung_wann"/>
    <constraint desc="" exp="" field="loeschung_wer"/>
    <constraint desc="" exp="" field="loeschung_bemerkung"/>
    <constraint desc="" exp="" field="bekanntmachung_wann"/>
    <constraint desc="" exp="" field="bekanntmachung_wer"/>
    <constraint desc="" exp="" field="bekanntmachung_bemerkung"/>
    <constraint desc="" exp="" field="tiere"/>
    <constraint desc="" exp="" field="pflanzen"/>
    <constraint desc="" exp="" field="pilze"/>
    <constraint desc="" exp="" field="stoerungen"/>
    <constraint desc="" exp="" field="beeintraechtigung_ids"/>
    <constraint desc="" exp="" field="gefahr_historisch"/>
    <constraint desc="" exp="" field="modtime"/>
    <constraint desc="" exp="" field="action"/>
    <constraint desc="" exp="" field="revision"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="&quot;pflege&quot;" actionWidgetStyle="dropDown" sortOrder="1">
    <columns>
      <column width="-1" type="field" hidden="0" name="ogc_fid"/>
      <column width="-1" type="field" hidden="0" name="identity"/>
      <column width="-1" type="field" hidden="0" name="objnr_sbk"/>
      <column width="-1" type="field" hidden="0" name="unr"/>
      <column width="-1" type="field" hidden="0" name="ausbildung"/>
      <column width="-1" type="field" hidden="0" name="pflege_zustand"/>
      <column width="-1" type="field" hidden="0" name="pflege_entwicklung"/>
      <column width="-1" type="field" hidden="0" name="pflege_bedarf"/>
      <column width="-1" type="field" hidden="0" name="pflege_rueckstand"/>
      <column width="483" type="field" hidden="0" name="pflege"/>
      <column width="-1" type="field" hidden="0" name="bt_code"/>
      <column width="-1" type="field" hidden="0" name="wert"/>
      <column width="-1" type="field" hidden="0" name="schutzstatus"/>
      <column width="-1" type="field" hidden="0" name="biotopkuerzel"/>
      <column width="-1" type="field" hidden="0" name="erhaltungszustand"/>
      <column width="-1" type="field" hidden="0" name="geprueft"/>
      <column width="-1" type="field" hidden="0" name="biotoptyp_art_nr"/>
      <column width="-1" type="field" hidden="0" name="biotoptyp2_art_nr"/>
      <column width="-1" type="field" hidden="0" name="waldbiotop"/>
      <column width="-1" type="field" hidden="0" name="objnr_landkreise"/>
      <column width="-1" type="field" hidden="0" name="tk25"/>
      <column width="-1" type="field" hidden="0" name="name"/>
      <column width="-1" type="field" hidden="0" name="status"/>
      <column width="-1" type="field" hidden="0" name="flaeche"/>
      <column width="-1" type="field" hidden="0" name="num_geom"/>
      <column width="-1" type="field" hidden="0" name="objnr"/>
      <column width="-1" type="field" hidden="0" name="umfang"/>
      <column width="-1" type="field" hidden="0" name="beschreibung"/>
      <column width="-1" type="field" hidden="0" name="erfassung_wann"/>
      <column width="-1" type="field" hidden="0" name="erfassung_wer"/>
      <column width="-1" type="field" hidden="0" name="erfassung_bemerkung"/>
      <column width="-1" type="field" hidden="0" name="bearbeitung_wann"/>
      <column width="-1" type="field" hidden="0" name="bearbeitung_wer"/>
      <column width="-1" type="field" hidden="0" name="bearbeitung_bemerkung"/>
      <column width="-1" type="field" hidden="0" name="loeschung_wann"/>
      <column width="-1" type="field" hidden="0" name="loeschung_wer"/>
      <column width="-1" type="field" hidden="0" name="loeschung_bemerkung"/>
      <column width="-1" type="field" hidden="0" name="bekanntmachung_wann"/>
      <column width="-1" type="field" hidden="0" name="bekanntmachung_wer"/>
      <column width="-1" type="field" hidden="0" name="bekanntmachung_bemerkung"/>
      <column width="-1" type="field" hidden="0" name="tiere"/>
      <column width="-1" type="field" hidden="0" name="pflanzen"/>
      <column width="-1" type="field" hidden="0" name="pilze"/>
      <column width="-1" type="field" hidden="0" name="stoerungen"/>
      <column width="-1" type="field" hidden="0" name="beeintraechtigung_ids"/>
      <column width="-1" type="field" hidden="0" name="gefahr_historisch"/>
      <column width="-1" type="actions" hidden="1"/>
      <column width="-1" type="field" hidden="0" name="modtime"/>
      <column width="-1" type="field" hidden="0" name="action"/>
      <column width="-1" type="field" hidden="0" name="revision"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <editform tolerant="1">C:/Users/jorda/AppData/Roaming/QGIS/QGIS3\profiles\default/python/plugins\biotopmanager\assets\ui\biotope_formular.ui</editform>
  <editforminit>dialog_init</editforminit>
  <editforminitcodesource>2</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
from biotopmanager.common.gui.attribute_dialog_function import biotop_dialog_generator

def dialog_init(dialog, layer, feature):
	biotop_dialog_generator(dialog, layer, feature)

]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>uifilelayout</editorlayout>
  <attributeEditorForm>
    <attributeEditorField index="21" name="name" showLabel="1"/>
    <attributeEditorField index="4" name="ausbildung" showLabel="1"/>
    <attributeEditorField index="-1" name="arten" showLabel="1"/>
    <attributeEditorField index="-1" name="werterhaltend" showLabel="1"/>
    <attributeEditorField index="18" name="waldbiotop" showLabel="1"/>
    <attributeEditorField index="22" name="status" showLabel="1"/>
    <attributeEditorField index="27" name="beschreibung" showLabel="1"/>
    <attributeEditorField index="15" name="geprueft" showLabel="1"/>
    <attributeEditorContainer visibilityExpressionEnabled="0" columnCount="1" groupBox="0" visibilityExpression="" name="Basisdaten" showLabel="1">
      <attributeEditorField index="13" name="biotopkuerzel" showLabel="1"/>
      <attributeEditorField index="0" name="ogc_fid" showLabel="1"/>
      <attributeEditorField index="1" name="identity" showLabel="1"/>
      <attributeEditorField index="3" name="unr" showLabel="1"/>
      <attributeEditorField index="10" name="bt_code" showLabel="1"/>
      <attributeEditorField index="16" name="biotoptyp_art_nr" showLabel="1"/>
      <attributeEditorField index="17" name="biotoptyp2_art_nr" showLabel="1"/>
      <attributeEditorField index="20" name="tk25" showLabel="1"/>
    </attributeEditorContainer>
    <attributeEditorContainer visibilityExpressionEnabled="0" columnCount="1" groupBox="0" visibilityExpression="" name="Erfassung und Bearbeitung" showLabel="1">
      <attributeEditorContainer visibilityExpressionEnabled="0" columnCount="3" groupBox="1" visibilityExpression="" name="Erfassung" showLabel="1">
        <attributeEditorField index="29" name="erfassung_wer" showLabel="1"/>
        <attributeEditorField index="28" name="erfassung_wann" showLabel="1"/>
        <attributeEditorField index="30" name="erfassung_bemerkung" showLabel="1"/>
        <attributeEditorField index="38" name="bekanntmachung_wer" showLabel="1"/>
        <attributeEditorField index="37" name="bekanntmachung_wann" showLabel="1"/>
        <attributeEditorField index="39" name="bekanntmachung_bemerkung" showLabel="1"/>
      </attributeEditorContainer>
      <attributeEditorContainer visibilityExpressionEnabled="0" columnCount="3" groupBox="1" visibilityExpression="" name="Bearbeiten" showLabel="1">
        <attributeEditorField index="32" name="bearbeitung_wer" showLabel="1"/>
        <attributeEditorField index="31" name="bearbeitung_wann" showLabel="1"/>
        <attributeEditorField index="33" name="bearbeitung_bemerkung" showLabel="1"/>
        <attributeEditorField index="35" name="loeschung_wer" showLabel="1"/>
        <attributeEditorField index="34" name="loeschung_wann" showLabel="1"/>
        <attributeEditorField index="36" name="loeschung_bemerkung" showLabel="1"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer visibilityExpressionEnabled="0" columnCount="1" groupBox="0" visibilityExpression="" name="Pflege" showLabel="1">
      <attributeEditorField index="14" name="erhaltungszustand" showLabel="1"/>
      <attributeEditorField index="45" name="gefahr_historisch" showLabel="1"/>
      <attributeEditorField index="8" name="pflege_rueckstand" showLabel="1"/>
      <attributeEditorField index="7" name="pflege_bedarf" showLabel="1"/>
      <attributeEditorField index="9" name="pflege" showLabel="1"/>
      <attributeEditorField index="6" name="pflege_entwicklung" showLabel="1"/>
      <attributeEditorField index="5" name="pflege_zustand" showLabel="1"/>
      <attributeEditorField index="12" name="schutzstatus" showLabel="1"/>
    </attributeEditorContainer>
    <attributeEditorContainer visibilityExpressionEnabled="0" columnCount="1" groupBox="0" visibilityExpression="" name="Geometrie" showLabel="1">
      <attributeEditorField index="23" name="flaeche" showLabel="1"/>
      <attributeEditorField index="26" name="umfang" showLabel="1"/>
      <attributeEditorField index="24" name="num_geom" showLabel="1"/>
    </attributeEditorContainer>
    <attributeEditorContainer visibilityExpressionEnabled="0" columnCount="1" groupBox="0" visibilityExpression="" name="Störungen" showLabel="1">
      <attributeEditorField index="43" name="stoerungen" showLabel="1"/>
    </attributeEditorContainer>
    <attributeEditorContainer visibilityExpressionEnabled="0" columnCount="1" groupBox="0" visibilityExpression="" name="Beeinträchtigungen" showLabel="1">
      <attributeEditorField index="44" name="beeintraechtigung_ids" showLabel="1"/>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field name="action" editable="1"/>
    <field name="arten" editable="1"/>
    <field name="ausbildung" editable="1"/>
    <field name="bearbeitung_bemerkung" editable="1"/>
    <field name="bearbeitung_wann" editable="1"/>
    <field name="bearbeitung_wer" editable="1"/>
    <field name="beeintraechtigung_ids" editable="1"/>
    <field name="bekanntmachung_bemerkung" editable="1"/>
    <field name="bekanntmachung_wann" editable="1"/>
    <field name="bekanntmachung_wer" editable="1"/>
    <field name="beschreibung" editable="1"/>
    <field name="biotopkuerzel" editable="1"/>
    <field name="biotoptyp2_art_nr" editable="1"/>
    <field name="biotoptyp_art_nr" editable="1"/>
    <field name="bt_code" editable="1"/>
    <field name="erfassung_bemerkung" editable="1"/>
    <field name="erfassung_wann" editable="1"/>
    <field name="erfassung_wer" editable="1"/>
    <field name="erhaltungszustand" editable="1"/>
    <field name="flaeche" editable="1"/>
    <field name="gefahr_historisch" editable="0"/>
    <field name="geprueft" editable="1"/>
    <field name="identity" editable="0"/>
    <field name="loeschung_bemerkung" editable="1"/>
    <field name="loeschung_wann" editable="1"/>
    <field name="loeschung_wer" editable="1"/>
    <field name="modtime" editable="1"/>
    <field name="name" editable="1"/>
    <field name="num_geom" editable="0"/>
    <field name="objnr" editable="1"/>
    <field name="objnr_landkreise" editable="1"/>
    <field name="objnr_sbk" editable="0"/>
    <field name="ogc_fid" editable="0"/>
    <field name="pflanzen" editable="0"/>
    <field name="pflege" editable="1"/>
    <field name="pflege_bedarf" editable="1"/>
    <field name="pflege_entwicklung" editable="1"/>
    <field name="pflege_rueckstand" editable="1"/>
    <field name="pflege_zustand" editable="1"/>
    <field name="pilze" editable="0"/>
    <field name="revision" editable="1"/>
    <field name="schutzstatus" editable="1"/>
    <field name="status" editable="1"/>
    <field name="stoerungen" editable="0"/>
    <field name="tiere" editable="0"/>
    <field name="tk25" editable="1"/>
    <field name="umfang" editable="1"/>
    <field name="unr" editable="1"/>
    <field name="waldbiotop" editable="1"/>
    <field name="wert" editable="1"/>
    <field name="werterhaltend" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="action"/>
    <field labelOnTop="0" name="arten"/>
    <field labelOnTop="0" name="ausbildung"/>
    <field labelOnTop="1" name="bearbeitung_bemerkung"/>
    <field labelOnTop="1" name="bearbeitung_wann"/>
    <field labelOnTop="1" name="bearbeitung_wer"/>
    <field labelOnTop="1" name="beeintraechtigung_ids"/>
    <field labelOnTop="1" name="bekanntmachung_bemerkung"/>
    <field labelOnTop="1" name="bekanntmachung_wann"/>
    <field labelOnTop="1" name="bekanntmachung_wer"/>
    <field labelOnTop="1" name="beschreibung"/>
    <field labelOnTop="0" name="biotopkuerzel"/>
    <field labelOnTop="0" name="biotoptyp2_art_nr"/>
    <field labelOnTop="0" name="biotoptyp_art_nr"/>
    <field labelOnTop="0" name="bt_code"/>
    <field labelOnTop="1" name="erfassung_bemerkung"/>
    <field labelOnTop="1" name="erfassung_wann"/>
    <field labelOnTop="1" name="erfassung_wer"/>
    <field labelOnTop="0" name="erhaltungszustand"/>
    <field labelOnTop="1" name="flaeche"/>
    <field labelOnTop="0" name="gefahr_historisch"/>
    <field labelOnTop="0" name="geprueft"/>
    <field labelOnTop="0" name="identity"/>
    <field labelOnTop="1" name="loeschung_bemerkung"/>
    <field labelOnTop="1" name="loeschung_wann"/>
    <field labelOnTop="1" name="loeschung_wer"/>
    <field labelOnTop="0" name="modtime"/>
    <field labelOnTop="0" name="name"/>
    <field labelOnTop="0" name="num_geom"/>
    <field labelOnTop="0" name="objnr"/>
    <field labelOnTop="0" name="objnr_landkreise"/>
    <field labelOnTop="0" name="objnr_sbk"/>
    <field labelOnTop="0" name="ogc_fid"/>
    <field labelOnTop="0" name="pflanzen"/>
    <field labelOnTop="0" name="pflege"/>
    <field labelOnTop="0" name="pflege_bedarf"/>
    <field labelOnTop="0" name="pflege_entwicklung"/>
    <field labelOnTop="0" name="pflege_rueckstand"/>
    <field labelOnTop="0" name="pflege_zustand"/>
    <field labelOnTop="0" name="pilze"/>
    <field labelOnTop="0" name="revision"/>
    <field labelOnTop="0" name="schutzstatus"/>
    <field labelOnTop="0" name="status"/>
    <field labelOnTop="0" name="stoerungen"/>
    <field labelOnTop="0" name="tiere"/>
    <field labelOnTop="0" name="tk25"/>
    <field labelOnTop="1" name="umfang"/>
    <field labelOnTop="0" name="unr"/>
    <field labelOnTop="0" name="waldbiotop"/>
    <field labelOnTop="0" name="wert"/>
    <field labelOnTop="0" name="werterhaltend"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>ogc_fid</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
