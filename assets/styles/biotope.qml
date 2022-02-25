<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyDrawingTol="1" maxScale="0" simplifyDrawingHints="1" readOnly="1" styleCategories="AllStyleCategories" simplifyAlgorithm="0" simplifyMaxScale="1" labelsEnabled="1" simplifyLocal="1" version="3.16.11-Hannover" minScale="100000000" hasScaleBasedVisibilityFlag="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <temporal mode="0" endExpression="" endField="" durationField="" enabled="0" startExpression="" durationUnit="min" startField="" fixedDuration="0" accumulate="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 symbollevels="0" enableorderby="1" type="singleSymbol" forceraster="0">
    <symbols>
      <symbol name="0" clip_to_extent="1" force_rhr="0" alpha="1" type="fill">
        <layer locked="0" enabled="1" class="SimpleFill" pass="0">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="150,150,150,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="247,247,247,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
    <orderby>
      <orderByClause nullsFirst="1" asc="0">distance(  $geometry,  translate(    @map_extent_center,    1000 * @map_extent_width * cos( radians( @qgis_25d_angle + 180 ) ),    1000 * @map_extent_width * sin( radians( @qgis_25d_angle + 180 ) )  ))</orderByClause>
    </orderby>
  </renderer-v2>
  <labeling type="simple">
    <settings calloutType="simple">
      <text-style capitalization="0" previewBkgrdColor="255,255,255,255" fontKerning="1" fontSizeUnit="Point" textOrientation="horizontal" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontWordSpacing="0" allowHtml="0" blendMode="0" textColor="0,0,0,255" fontSize="10" fontWeight="50" fontFamily="Noto Sans" textOpacity="1" fontItalic="0" fontUnderline="0" namedStyle="" fontStrikeout="0" fieldName="biotoptyp2_art_nr" fontLetterSpacing="0" multilineHeight="1" isExpression="0" useSubstitutions="0">
        <text-buffer bufferNoFill="1" bufferSizeUnits="MM" bufferColor="255,255,255,255" bufferDraw="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSize="1" bufferOpacity="1" bufferJoinStyle="128" bufferBlendMode="0"/>
        <text-mask maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskEnabled="0" maskType="0" maskSizeUnits="MM" maskJoinStyle="128" maskOpacity="1" maskedSymbolLayers="" maskSize="0"/>
        <background shapeOffsetX="0" shapeType="0" shapeSVGFile="" shapeOffsetUnit="MM" shapeRadiiUnit="MM" shapeRotation="0" shapeSizeType="0" shapeRadiiX="0" shapeSizeUnit="MM" shapeSizeX="0" shapeBorderColor="128,128,128,255" shapeRotationType="0" shapeBlendMode="0" shapeDraw="0" shapeOpacity="1" shapeJoinStyle="64" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeFillColor="255,255,255,255" shapeBorderWidthUnit="MM" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeSizeY="0" shapeRadiiY="0" shapeOffsetY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0">
          <symbol name="markerSymbol" clip_to_extent="1" force_rhr="0" alpha="1" type="marker">
            <layer locked="0" enabled="1" class="SimpleMarker" pass="0">
              <prop v="0" k="angle"/>
              <prop v="232,113,141,255" k="color"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="circle" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="35,35,35,255" k="outline_color"/>
              <prop v="solid" k="outline_style"/>
              <prop v="0" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MM" k="outline_width_unit"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="2" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MM" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option name="name" value="" type="QString"/>
                  <Option name="properties"/>
                  <Option name="type" value="collection" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </background>
        <shadow shadowRadiusUnit="MM" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOpacity="0.7" shadowOffsetUnit="MM" shadowBlendMode="6" shadowDraw="0" shadowScale="100" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowUnder="0" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowColor="0,0,0,255"/>
        <dd_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </dd_properties>
        <substitutions/>
      </text-style>
      <text-format plussign="0" wrapChar="" formatNumbers="0" useMaxLineLengthForAutoWrap="1" decimals="3" rightDirectionSymbol=">" reverseDirectionSymbol="0" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" multilineAlign="0" autoWrapLength="0" addDirectionSymbol="0"/>
      <placement preserveRotation="1" lineAnchorPercent="0.5" dist="0" priority="5" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" maxCurvedCharAngleIn="25" overrunDistanceUnit="MM" placementFlags="10" centroidInside="0" lineAnchorType="0" placement="0" offsetType="0" repeatDistance="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" distMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM" polygonPlacementFlags="2" quadOffset="4" geometryGeneratorEnabled="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" rotationAngle="0" geometryGenerator="" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" yOffset="0" offsetUnits="MM" centroidWhole="0" layerType="PolygonGeometry" repeatDistanceUnits="MM" fitInPolygonOnly="0" xOffset="0" overrunDistance="0" maxCurvedCharAngleOut="-25" geometryGeneratorType="PointGeometry"/>
      <rendering fontLimitPixelSize="0" scaleMin="0" displayAll="0" obstacleType="0" zIndex="0" fontMinPixelSize="3" minFeatureSize="0" labelPerPart="0" obstacleFactor="1" upsidedownLabels="0" obstacle="1" fontMaxPixelSize="10000" mergeLines="0" limitNumLabels="0" maxNumLabels="2000" drawLabels="1" scaleMax="10000" scaleVisibility="1"/>
      <dd_properties>
        <Option type="Map">
          <Option name="name" value="" type="QString"/>
          <Option name="properties"/>
          <Option name="type" value="collection" type="QString"/>
        </Option>
      </dd_properties>
      <callout type="simple">
        <Option type="Map">
          <Option name="anchorPoint" value="pole_of_inaccessibility" type="QString"/>
          <Option name="ddProperties" type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
          <Option name="drawToAllParts" value="false" type="bool"/>
          <Option name="enabled" value="0" type="QString"/>
          <Option name="labelAnchorPoint" value="point_on_exterior" type="QString"/>
          <Option name="lineSymbol" value="&lt;symbol name=&quot;symbol&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; type=&quot;line&quot;>&lt;layer locked=&quot;0&quot; enabled=&quot;1&quot; class=&quot;SimpleLine&quot; pass=&quot;0&quot;>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
          <Option name="minLength" value="0" type="double"/>
          <Option name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
          <Option name="minLengthUnit" value="MM" type="QString"/>
          <Option name="offsetFromAnchor" value="0" type="double"/>
          <Option name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
          <Option name="offsetFromAnchorUnit" value="MM" type="QString"/>
          <Option name="offsetFromLabel" value="0" type="double"/>
          <Option name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0" type="QString"/>
          <Option name="offsetFromLabelUnit" value="MM" type="QString"/>
        </Option>
      </callout>
    </settings>
  </labeling>
  <customproperties>
    <property key="dualview/previewExpressions">
      <value>"ogc_fid"</value>
    </property>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Pie" attributeLegend="1">
    <DiagramCategory scaleBasedVisibility="0" penColor="#000000" backgroundColor="#ffffff" maxScaleDenominator="1e+08" lineSizeScale="3x:0,0,0,0,0,0" barWidth="5" height="15" diagramOrientation="Up" lineSizeType="MM" scaleDependency="Area" sizeType="MM" minimumSize="0" backgroundAlpha="255" width="15" opacity="1" enabled="0" penAlpha="255" minScaleDenominator="0" showAxis="0" spacingUnitScale="3x:0,0,0,0,0,0" penWidth="0" direction="1" labelPlacementMethod="XHeight" spacingUnit="MM" spacing="0" rotationOffset="270" sizeScale="3x:0,0,0,0,0,0">
      <fontProperties style="Regular" description="Noto Sans,10,-1,0,50,0,0,0,0,0,Regular"/>
      <attribute field="&quot;flaeche&quot;" color="#6830e8" label="flaeche"/>
      <axisSymbol>
        <symbol name="" clip_to_extent="1" force_rhr="0" alpha="1" type="line">
          <layer locked="0" enabled="1" class="SimpleLine" pass="0">
            <prop v="0" k="align_dash_pattern"/>
            <prop v="square" k="capstyle"/>
            <prop v="5;2" k="customdash"/>
            <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
            <prop v="MM" k="customdash_unit"/>
            <prop v="0" k="dash_pattern_offset"/>
            <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
            <prop v="MM" k="dash_pattern_offset_unit"/>
            <prop v="0" k="draw_inside_polygon"/>
            <prop v="bevel" k="joinstyle"/>
            <prop v="35,35,35,255" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.26" k="line_width"/>
            <prop v="MM" k="line_width_unit"/>
            <prop v="0" k="offset"/>
            <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
            <prop v="MM" k="offset_unit"/>
            <prop v="0" k="ring_filter"/>
            <prop v="0" k="tweak_dash_pattern_on_corners"/>
            <prop v="0" k="use_custom_dash"/>
            <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
            <data_defined_properties>
              <Option type="Map">
                <Option name="name" value="" type="QString"/>
                <Option name="properties"/>
                <Option name="type" value="collection" type="QString"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings priority="0" dist="0" placement="1" showAll="1" linePlacementFlags="18" zIndex="0" obstacle="0">
    <properties>
      <Option type="Map">
        <Option name="name" value="" type="QString"/>
        <Option name="properties"/>
        <Option name="type" value="collection" type="QString"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration type="Map">
      <Option name="QgsGeometryGapCheck" type="Map">
        <Option name="allowedGapsBuffer" value="0" type="double"/>
        <Option name="allowedGapsEnabled" value="false" type="bool"/>
        <Option name="allowedGapsLayer" value="" type="QString"/>
      </Option>
    </checkConfiguration>
  </geometryOptions>
  <legend type="default-vector"/>
  <referencedLayers/>
  <fieldConfiguration>
    <field name="ogc_fid" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="identity" configurationFlags="None">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="flaeche" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="umfang" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="num_geom" configurationFlags="None">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="objnr" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="objnr_sbk" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="objnr_landkreise" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="tk25" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="unr" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="beschreibung" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="true" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="angrenzendebereiche" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ausbildung" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="pflege_zustand_orig" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="pflege_entwicklung" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="pflege_bedarf" configurationFlags="None">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option name="CheckedState" value="true" type="QString"/>
            <Option name="UncheckedState" value="false" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="pflege_rueckstand" configurationFlags="None">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="pflege" configurationFlags="None">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="true" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="massnahmen_4db63ca7_d208_4870_a26c_a57d96cc6942" type="QString"/>
            <Option name="NofColumns" value="2" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="massnahme" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="bt_code" configurationFlags="None">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="wert" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="schutzstatus_orig" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="biotopkuerzel" configurationFlags="None">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="erhaltungszustand" configurationFlags="None">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="erhaltungszustand_3b20b600_103c_43db_93ca_4ae7938a9c04" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="wert" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="erfassung" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="bearbeitung" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="loeschung" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="bekanntmachung" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="geprueft" configurationFlags="None">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option name="CheckedState" value="true" type="QString"/>
            <Option name="UncheckedState" value="false" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="biotoptyp_art_nr" configurationFlags="None">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="false" type="bool"/>
            <Option name="Description" value="" type="QString"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="id_biot_alt" type="QString"/>
            <Option name="Layer" value="biotoptypen_5862118c_60ab_4941_a6be_e448a8fc1d26" type="QString"/>
            <Option name="LayerName" value="biotoptypen" type="QString"/>
            <Option name="LayerProviderName" value="postgres" type="QString"/>
            <Option name="LayerSource" value="dbname='biotope' host=localhost port=5432 user='biotope_admin' key='id' checkPrimaryKeyUnicity='1' table=&quot;referenzen&quot;.&quot;biotoptypen&quot;" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="name_2002" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="biotoptyp2_art_nr" configurationFlags="None">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="false" type="bool"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="nummer" type="QString"/>
            <Option name="Layer" value="biotoptypen_5862118c_60ab_4941_a6be_e448a8fc1d26" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="name_2012" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="naturraumnr" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="naturraumflussauennr" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="fanr" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="reviernr" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="imreviernr" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="eigentumsartnr" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="waldbiotop" configurationFlags="None">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option name="CheckedState" value="true" type="QString"/>
            <Option name="UncheckedState" value="false" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="name" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="status" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="erfassung_wann" configurationFlags="None">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" value="true" type="bool"/>
            <Option name="calendar_popup" value="true" type="bool"/>
            <Option name="display_format" value="yyyy-MM-dd HH:mm:ss" type="QString"/>
            <Option name="field_format" value="yyyy-MM-dd HH:mm:ss" type="QString"/>
            <Option name="field_iso_format" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="erfassung_wer" configurationFlags="None">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Description" value="" type="QString"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="kartierer" type="QString"/>
            <Option name="Layer" value="kartierer_c4ed5a8e_e841_449d_aec9_1abe70f9064b" type="QString"/>
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
    <field name="erfassung_bemerkung" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="true" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="bearbeitung_wann" configurationFlags="None">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" value="true" type="bool"/>
            <Option name="calendar_popup" value="true" type="bool"/>
            <Option name="display_format" value="yyyy-MM-dd HH:mm:ss" type="QString"/>
            <Option name="field_format" value="yyyy-MM-dd HH:mm:ss" type="QString"/>
            <Option name="field_iso_format" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="bearbeitung_wer" configurationFlags="None">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Description" value="" type="QString"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="kartierer" type="QString"/>
            <Option name="Layer" value="kartierer_c4ed5a8e_e841_449d_aec9_1abe70f9064b" type="QString"/>
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
    <field name="bearbeitung_bemerkung" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="true" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="loeschung_wann" configurationFlags="None">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" value="true" type="bool"/>
            <Option name="calendar_popup" value="true" type="bool"/>
            <Option name="display_format" value="yyyy-MM-dd HH:mm:ss" type="QString"/>
            <Option name="field_format" value="yyyy-MM-dd HH:mm:ss" type="QString"/>
            <Option name="field_iso_format" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="loeschung_wer" configurationFlags="None">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Description" value="" type="QString"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="kartierer" type="QString"/>
            <Option name="Layer" value="kartierer_c4ed5a8e_e841_449d_aec9_1abe70f9064b" type="QString"/>
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
    <field name="loeschung_bemerkung" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="true" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="bekanntmachung_wann" configurationFlags="None">
      <editWidget type="DateTime">
        <config>
          <Option type="Map">
            <Option name="allow_null" value="true" type="bool"/>
            <Option name="calendar_popup" value="true" type="bool"/>
            <Option name="display_format" value="yyyy-MM-dd HH:mm:ss" type="QString"/>
            <Option name="field_format" value="yyyy-MM-dd HH:mm:ss" type="QString"/>
            <Option name="field_iso_format" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="bekanntmachung_wer" configurationFlags="None">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Description" value="" type="QString"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="kartierer" type="QString"/>
            <Option name="Layer" value="kartierer_c4ed5a8e_e841_449d_aec9_1abe70f9064b" type="QString"/>
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
    <field name="bekanntmachung_bemerkung" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="true" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="beeintraechtigung_ids" configurationFlags="None">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="true" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Description" value="" type="QString"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="beeintraechtigungen" type="QString"/>
            <Option name="Layer" value="beeintraechtigungen_b988c17c_baf3_45fa_b3cf_e4e2b1edc9ae" type="QString"/>
            <Option name="LayerName" value="beeintraechtigungen" type="QString"/>
            <Option name="LayerProviderName" value="postgres" type="QString"/>
            <Option name="LayerSource" value="dbname='biotope' host=localhost port=5432 user='biotope_admin' key='id' checkPrimaryKeyUnicity='1' table=&quot;referenzen&quot;.&quot;beeintraechtigungen&quot;" type="QString"/>
            <Option name="NofColumns" value="2" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="beeintraechtigungen" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="aenderungen" configurationFlags="None">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="aenderungen_61461507_d0ae_433c_80b2_f6626888c2a6" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="aenderung" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="wertbestimmend" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="stoer_gefahrlvl_gefahrhist" configurationFlags="None">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="pflege_zustand" configurationFlags="None">
      <editWidget type="ValueMap">
        <config>
          <Option type="Map">
            <Option name="map" type="List">
              <Option type="Map">
                <Option name="gut" value="0" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="mäßig" value="1" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="schlecht" value="2" type="QString"/>
              </Option>
              <Option type="Map">
                <Option name="Keine Angaben" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" type="QString"/>
              </Option>
            </Option>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="schutzstatus" configurationFlags="None">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="schutzstatus_f4c2025c_e610_414a_8471_a303f199b8f3" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="wert" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="FID" field="ogc_fid" index="0"/>
    <alias name="" field="identity" index="1"/>
    <alias name="Fläche (m²)" field="flaeche" index="2"/>
    <alias name="Umfang (m)" field="umfang" index="3"/>
    <alias name="Anzahl Geometrien" field="num_geom" index="4"/>
    <alias name="Biotopnummer (LID)" field="objnr" index="5"/>
    <alias name="Objekt-Nr. (SBK)" field="objnr_sbk" index="6"/>
    <alias name="Alte LK-Nr." field="objnr_landkreise" index="7"/>
    <alias name="TK 25" field="tk25" index="8"/>
    <alias name="Unternummer (SBK)" field="unr" index="9"/>
    <alias name="Beschreibung" field="beschreibung" index="10"/>
    <alias name="" field="angrenzendebereiche" index="11"/>
    <alias name="Ausbildung" field="ausbildung" index="12"/>
    <alias name="" field="pflege_zustand_orig" index="13"/>
    <alias name="Hinweise zur Pflege" field="pflege_entwicklung" index="14"/>
    <alias name="Pflegebedarf" field="pflege_bedarf" index="15"/>
    <alias name="Pflegerückstand" field="pflege_rueckstand" index="16"/>
    <alias name="Pflegemaßnahmen" field="pflege" index="17"/>
    <alias name="Unterbiotope" field="bt_code" index="18"/>
    <alias name="" field="wert" index="19"/>
    <alias name="" field="schutzstatus_orig" index="20"/>
    <alias name="Biotopkürzel" field="biotopkuerzel" index="21"/>
    <alias name="Erhaltungszustand" field="erhaltungszustand" index="22"/>
    <alias name="" field="erfassung" index="23"/>
    <alias name="" field="bearbeitung" index="24"/>
    <alias name="" field="loeschung" index="25"/>
    <alias name="" field="bekanntmachung" index="26"/>
    <alias name="Geprüft" field="geprueft" index="27"/>
    <alias name="Biotoptyp (2002)" field="biotoptyp_art_nr" index="28"/>
    <alias name="Biotoptyp (2012)" field="biotoptyp2_art_nr" index="29"/>
    <alias name="" field="naturraumnr" index="30"/>
    <alias name="" field="naturraumflussauennr" index="31"/>
    <alias name="" field="fanr" index="32"/>
    <alias name="" field="reviernr" index="33"/>
    <alias name="" field="imreviernr" index="34"/>
    <alias name="" field="eigentumsartnr" index="35"/>
    <alias name="Waldbiotop" field="waldbiotop" index="36"/>
    <alias name="Name" field="name" index="37"/>
    <alias name="Status" field="status" index="38"/>
    <alias name="Kartierungsdatum" field="erfassung_wann" index="39"/>
    <alias name="Kartierer" field="erfassung_wer" index="40"/>
    <alias name="Herkunft Daten" field="erfassung_bemerkung" index="41"/>
    <alias name="Bearbeitungsdatum" field="bearbeitung_wann" index="42"/>
    <alias name="Bearbeiter" field="bearbeitung_wer" index="43"/>
    <alias name="Datenstand Bearbeitung" field="bearbeitung_bemerkung" index="44"/>
    <alias name="Datum Archivierung" field="loeschung_wann" index="45"/>
    <alias name="archiviert von" field="loeschung_wer" index="46"/>
    <alias name="Grund der Archivierung" field="loeschung_bemerkung" index="47"/>
    <alias name="Bekanntmachungsdatum" field="bekanntmachung_wann" index="48"/>
    <alias name="Bearbeiter" field="bekanntmachung_wer" index="49"/>
    <alias name="Bemerkungen zur Bekanntmachung" field="bekanntmachung_bemerkung" index="50"/>
    <alias name="Beeinträchtigungen" field="beeintraechtigung_ids" index="51"/>
    <alias name="" field="aenderungen" index="52"/>
    <alias name="Wertbestimmend" field="wertbestimmend" index="53"/>
    <alias name="" field="stoer_gefahrlvl_gefahrhist" index="54"/>
    <alias name="Pflege Zustand" field="pflege_zustand" index="55"/>
    <alias name="Schutzstatus" field="schutzstatus" index="56"/>
  </aliases>
  <defaults>
    <default expression="" field="ogc_fid" applyOnUpdate="0"/>
    <default expression="" field="identity" applyOnUpdate="0"/>
    <default expression=" $area " field="flaeche" applyOnUpdate="0"/>
    <default expression=" $perimeter " field="umfang" applyOnUpdate="0"/>
    <default expression="" field="num_geom" applyOnUpdate="0"/>
    <default expression="" field="objnr" applyOnUpdate="0"/>
    <default expression="" field="objnr_sbk" applyOnUpdate="0"/>
    <default expression="" field="objnr_landkreise" applyOnUpdate="0"/>
    <default expression="" field="tk25" applyOnUpdate="0"/>
    <default expression="" field="unr" applyOnUpdate="0"/>
    <default expression="" field="beschreibung" applyOnUpdate="0"/>
    <default expression="" field="angrenzendebereiche" applyOnUpdate="0"/>
    <default expression="" field="ausbildung" applyOnUpdate="0"/>
    <default expression="" field="pflege_zustand_orig" applyOnUpdate="0"/>
    <default expression="" field="pflege_entwicklung" applyOnUpdate="0"/>
    <default expression="" field="pflege_bedarf" applyOnUpdate="0"/>
    <default expression="" field="pflege_rueckstand" applyOnUpdate="0"/>
    <default expression="" field="pflege" applyOnUpdate="0"/>
    <default expression="" field="bt_code" applyOnUpdate="0"/>
    <default expression="" field="wert" applyOnUpdate="0"/>
    <default expression="" field="schutzstatus_orig" applyOnUpdate="0"/>
    <default expression="" field="biotopkuerzel" applyOnUpdate="0"/>
    <default expression="" field="erhaltungszustand" applyOnUpdate="0"/>
    <default expression="" field="erfassung" applyOnUpdate="0"/>
    <default expression="" field="bearbeitung" applyOnUpdate="0"/>
    <default expression="" field="loeschung" applyOnUpdate="0"/>
    <default expression="" field="bekanntmachung" applyOnUpdate="0"/>
    <default expression="" field="geprueft" applyOnUpdate="0"/>
    <default expression="" field="biotoptyp_art_nr" applyOnUpdate="0"/>
    <default expression="" field="biotoptyp2_art_nr" applyOnUpdate="0"/>
    <default expression="" field="naturraumnr" applyOnUpdate="0"/>
    <default expression="" field="naturraumflussauennr" applyOnUpdate="0"/>
    <default expression="" field="fanr" applyOnUpdate="0"/>
    <default expression="" field="reviernr" applyOnUpdate="0"/>
    <default expression="" field="imreviernr" applyOnUpdate="0"/>
    <default expression="" field="eigentumsartnr" applyOnUpdate="0"/>
    <default expression="" field="waldbiotop" applyOnUpdate="0"/>
    <default expression="" field="name" applyOnUpdate="0"/>
    <default expression="" field="status" applyOnUpdate="0"/>
    <default expression="" field="erfassung_wann" applyOnUpdate="0"/>
    <default expression="" field="erfassung_wer" applyOnUpdate="0"/>
    <default expression="" field="erfassung_bemerkung" applyOnUpdate="0"/>
    <default expression="" field="bearbeitung_wann" applyOnUpdate="0"/>
    <default expression="" field="bearbeitung_wer" applyOnUpdate="0"/>
    <default expression="" field="bearbeitung_bemerkung" applyOnUpdate="0"/>
    <default expression="" field="loeschung_wann" applyOnUpdate="0"/>
    <default expression="" field="loeschung_wer" applyOnUpdate="0"/>
    <default expression="" field="loeschung_bemerkung" applyOnUpdate="0"/>
    <default expression="" field="bekanntmachung_wann" applyOnUpdate="0"/>
    <default expression="" field="bekanntmachung_wer" applyOnUpdate="0"/>
    <default expression="" field="bekanntmachung_bemerkung" applyOnUpdate="0"/>
    <default expression="" field="beeintraechtigung_ids" applyOnUpdate="0"/>
    <default expression="" field="aenderungen" applyOnUpdate="0"/>
    <default expression="" field="wertbestimmend" applyOnUpdate="0"/>
    <default expression="'__'" field="stoer_gefahrlvl_gefahrhist" applyOnUpdate="0"/>
    <default expression="" field="pflege_zustand" applyOnUpdate="0"/>
    <default expression="" field="schutzstatus" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="ogc_fid" constraints="3" notnull_strength="1" exp_strength="0" unique_strength="1"/>
    <constraint field="identity" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="flaeche" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="umfang" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="num_geom" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="objnr" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="objnr_sbk" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="objnr_landkreise" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="tk25" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="unr" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="beschreibung" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="angrenzendebereiche" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="ausbildung" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="pflege_zustand_orig" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="pflege_entwicklung" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="pflege_bedarf" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="pflege_rueckstand" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="pflege" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="bt_code" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="wert" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="schutzstatus_orig" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="biotopkuerzel" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="erhaltungszustand" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="erfassung" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="bearbeitung" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="loeschung" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="bekanntmachung" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="geprueft" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="biotoptyp_art_nr" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="biotoptyp2_art_nr" constraints="1" notnull_strength="2" exp_strength="0" unique_strength="0"/>
    <constraint field="naturraumnr" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="naturraumflussauennr" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="fanr" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="reviernr" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="imreviernr" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="eigentumsartnr" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="waldbiotop" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="name" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="status" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="erfassung_wann" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="erfassung_wer" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="erfassung_bemerkung" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="bearbeitung_wann" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="bearbeitung_wer" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="bearbeitung_bemerkung" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="loeschung_wann" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="loeschung_wer" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="loeschung_bemerkung" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="bekanntmachung_wann" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="bekanntmachung_wer" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="bekanntmachung_bemerkung" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="beeintraechtigung_ids" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="aenderungen" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="wertbestimmend" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="stoer_gefahrlvl_gefahrhist" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="pflege_zustand" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
    <constraint field="schutzstatus" constraints="0" notnull_strength="0" exp_strength="0" unique_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="ogc_fid" exp="" desc=""/>
    <constraint field="identity" exp="" desc=""/>
    <constraint field="flaeche" exp="" desc=""/>
    <constraint field="umfang" exp="" desc=""/>
    <constraint field="num_geom" exp="" desc=""/>
    <constraint field="objnr" exp="" desc=""/>
    <constraint field="objnr_sbk" exp="" desc=""/>
    <constraint field="objnr_landkreise" exp="" desc=""/>
    <constraint field="tk25" exp="" desc=""/>
    <constraint field="unr" exp="" desc=""/>
    <constraint field="beschreibung" exp="" desc=""/>
    <constraint field="angrenzendebereiche" exp="" desc=""/>
    <constraint field="ausbildung" exp="" desc=""/>
    <constraint field="pflege_zustand_orig" exp="" desc=""/>
    <constraint field="pflege_entwicklung" exp="" desc=""/>
    <constraint field="pflege_bedarf" exp="" desc=""/>
    <constraint field="pflege_rueckstand" exp="" desc=""/>
    <constraint field="pflege" exp="" desc=""/>
    <constraint field="bt_code" exp="" desc=""/>
    <constraint field="wert" exp="" desc=""/>
    <constraint field="schutzstatus_orig" exp="" desc=""/>
    <constraint field="biotopkuerzel" exp="" desc=""/>
    <constraint field="erhaltungszustand" exp="" desc=""/>
    <constraint field="erfassung" exp="" desc=""/>
    <constraint field="bearbeitung" exp="" desc=""/>
    <constraint field="loeschung" exp="" desc=""/>
    <constraint field="bekanntmachung" exp="" desc=""/>
    <constraint field="geprueft" exp="" desc=""/>
    <constraint field="biotoptyp_art_nr" exp="" desc=""/>
    <constraint field="biotoptyp2_art_nr" exp="" desc=""/>
    <constraint field="naturraumnr" exp="" desc=""/>
    <constraint field="naturraumflussauennr" exp="" desc=""/>
    <constraint field="fanr" exp="" desc=""/>
    <constraint field="reviernr" exp="" desc=""/>
    <constraint field="imreviernr" exp="" desc=""/>
    <constraint field="eigentumsartnr" exp="" desc=""/>
    <constraint field="waldbiotop" exp="" desc=""/>
    <constraint field="name" exp="" desc=""/>
    <constraint field="status" exp="" desc=""/>
    <constraint field="erfassung_wann" exp="" desc=""/>
    <constraint field="erfassung_wer" exp="" desc=""/>
    <constraint field="erfassung_bemerkung" exp="" desc=""/>
    <constraint field="bearbeitung_wann" exp="" desc=""/>
    <constraint field="bearbeitung_wer" exp="" desc=""/>
    <constraint field="bearbeitung_bemerkung" exp="" desc=""/>
    <constraint field="loeschung_wann" exp="" desc=""/>
    <constraint field="loeschung_wer" exp="" desc=""/>
    <constraint field="loeschung_bemerkung" exp="" desc=""/>
    <constraint field="bekanntmachung_wann" exp="" desc=""/>
    <constraint field="bekanntmachung_wer" exp="" desc=""/>
    <constraint field="bekanntmachung_bemerkung" exp="" desc=""/>
    <constraint field="beeintraechtigung_ids" exp="" desc=""/>
    <constraint field="aenderungen" exp="" desc=""/>
    <constraint field="wertbestimmend" exp="" desc=""/>
    <constraint field="stoer_gefahrlvl_gefahrhist" exp="" desc=""/>
    <constraint field="pflege_zustand" exp="" desc=""/>
    <constraint field="schutzstatus" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="&quot;pflege&quot;" sortOrder="1">
    <columns>
      <column name="ogc_fid" type="field" width="-1" hidden="0"/>
      <column name="identity" type="field" width="-1" hidden="0"/>
      <column name="objnr_sbk" type="field" width="-1" hidden="0"/>
      <column name="unr" type="field" width="-1" hidden="0"/>
      <column name="ausbildung" type="field" width="-1" hidden="0"/>
      <column name="pflege_zustand" type="field" width="-1" hidden="0"/>
      <column name="pflege_entwicklung" type="field" width="-1" hidden="0"/>
      <column name="pflege_bedarf" type="field" width="-1" hidden="0"/>
      <column name="pflege_rueckstand" type="field" width="-1" hidden="0"/>
      <column name="pflege" type="field" width="483" hidden="0"/>
      <column name="bt_code" type="field" width="-1" hidden="0"/>
      <column name="wert" type="field" width="-1" hidden="0"/>
      <column name="schutzstatus" type="field" width="-1" hidden="0"/>
      <column name="biotopkuerzel" type="field" width="-1" hidden="0"/>
      <column name="erhaltungszustand" type="field" width="-1" hidden="0"/>
      <column name="geprueft" type="field" width="-1" hidden="0"/>
      <column name="biotoptyp_art_nr" type="field" width="-1" hidden="0"/>
      <column name="biotoptyp2_art_nr" type="field" width="-1" hidden="0"/>
      <column name="waldbiotop" type="field" width="-1" hidden="0"/>
      <column name="objnr_landkreise" type="field" width="-1" hidden="0"/>
      <column name="tk25" type="field" width="-1" hidden="0"/>
      <column name="name" type="field" width="-1" hidden="0"/>
      <column name="status" type="field" width="-1" hidden="0"/>
      <column name="flaeche" type="field" width="-1" hidden="0"/>
      <column name="num_geom" type="field" width="-1" hidden="0"/>
      <column name="objnr" type="field" width="-1" hidden="0"/>
      <column name="umfang" type="field" width="-1" hidden="0"/>
      <column name="beschreibung" type="field" width="-1" hidden="0"/>
      <column name="erfassung_wann" type="field" width="-1" hidden="0"/>
      <column name="erfassung_wer" type="field" width="-1" hidden="0"/>
      <column name="erfassung_bemerkung" type="field" width="-1" hidden="0"/>
      <column name="bearbeitung_wann" type="field" width="-1" hidden="0"/>
      <column name="bearbeitung_wer" type="field" width="-1" hidden="0"/>
      <column name="bearbeitung_bemerkung" type="field" width="-1" hidden="0"/>
      <column name="loeschung_wann" type="field" width="-1" hidden="0"/>
      <column name="loeschung_wer" type="field" width="-1" hidden="0"/>
      <column name="loeschung_bemerkung" type="field" width="-1" hidden="0"/>
      <column name="bekanntmachung_wann" type="field" width="-1" hidden="0"/>
      <column name="bekanntmachung_wer" type="field" width="-1" hidden="0"/>
      <column name="bekanntmachung_bemerkung" type="field" width="-1" hidden="0"/>
      <column name="beeintraechtigung_ids" type="field" width="-1" hidden="0"/>
      <column type="actions" width="-1" hidden="1"/>
      <column name="schutzstatus_orig" type="field" width="-1" hidden="0"/>
      <column name="pflege_zustand_orig" type="field" width="-1" hidden="0"/>
      <column name="aenderungen" type="field" width="-1" hidden="0"/>
      <column name="angrenzendebereiche" type="field" width="-1" hidden="0"/>
      <column name="erfassung" type="field" width="-1" hidden="0"/>
      <column name="bearbeitung" type="field" width="-1" hidden="0"/>
      <column name="loeschung" type="field" width="-1" hidden="0"/>
      <column name="bekanntmachung" type="field" width="-1" hidden="0"/>
      <column name="naturraumnr" type="field" width="-1" hidden="0"/>
      <column name="naturraumflussauennr" type="field" width="-1" hidden="0"/>
      <column name="fanr" type="field" width="-1" hidden="0"/>
      <column name="reviernr" type="field" width="-1" hidden="0"/>
      <column name="imreviernr" type="field" width="-1" hidden="0"/>
      <column name="eigentumsartnr" type="field" width="-1" hidden="0"/>
      <column name="wertbestimmend" type="field" width="-1" hidden="0"/>
      <column name="stoer_gefahrlvl_gefahrhist" type="field" width="-1" hidden="0"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <storedexpressions/>
  <editform tolerant="1">/home/feckler/.local/share/QGIS/QGIS3/profiles/default/python/plugins/biotopmanager/assets/ui/biotope_formular.ui</editform>
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
    <attributeEditorField name="name" showLabel="1" index="37"/>
    <attributeEditorField name="ausbildung" showLabel="1" index="12"/>
    <attributeEditorField name="arten" showLabel="1" index="-1"/>
    <attributeEditorField name="werterhaltend" showLabel="1" index="-1"/>
    <attributeEditorField name="waldbiotop" showLabel="1" index="36"/>
    <attributeEditorField name="status" showLabel="1" index="38"/>
    <attributeEditorField name="beschreibung" showLabel="1" index="10"/>
    <attributeEditorField name="geprueft" showLabel="1" index="27"/>
    <attributeEditorContainer visibilityExpression="" name="Basisdaten" showLabel="1" columnCount="1" visibilityExpressionEnabled="0" groupBox="0">
      <attributeEditorField name="biotopkuerzel" showLabel="1" index="21"/>
      <attributeEditorField name="ogc_fid" showLabel="1" index="0"/>
      <attributeEditorField name="identity" showLabel="1" index="1"/>
      <attributeEditorField name="unr" showLabel="1" index="9"/>
      <attributeEditorField name="bt_code" showLabel="1" index="18"/>
      <attributeEditorField name="biotoptyp_art_nr" showLabel="1" index="28"/>
      <attributeEditorField name="biotoptyp2_art_nr" showLabel="1" index="29"/>
      <attributeEditorField name="tk25" showLabel="1" index="8"/>
    </attributeEditorContainer>
    <attributeEditorContainer visibilityExpression="" name="Erfassung und Bearbeitung" showLabel="1" columnCount="1" visibilityExpressionEnabled="0" groupBox="0">
      <attributeEditorContainer visibilityExpression="" name="Erfassung" showLabel="1" columnCount="3" visibilityExpressionEnabled="0" groupBox="1">
        <attributeEditorField name="erfassung_wer" showLabel="1" index="40"/>
        <attributeEditorField name="erfassung_wann" showLabel="1" index="39"/>
        <attributeEditorField name="erfassung_bemerkung" showLabel="1" index="41"/>
        <attributeEditorField name="bekanntmachung_wer" showLabel="1" index="49"/>
        <attributeEditorField name="bekanntmachung_wann" showLabel="1" index="48"/>
        <attributeEditorField name="bekanntmachung_bemerkung" showLabel="1" index="50"/>
      </attributeEditorContainer>
      <attributeEditorContainer visibilityExpression="" name="Bearbeiten" showLabel="1" columnCount="3" visibilityExpressionEnabled="0" groupBox="1">
        <attributeEditorField name="bearbeitung_wer" showLabel="1" index="43"/>
        <attributeEditorField name="bearbeitung_wann" showLabel="1" index="42"/>
        <attributeEditorField name="bearbeitung_bemerkung" showLabel="1" index="44"/>
        <attributeEditorField name="loeschung_wer" showLabel="1" index="46"/>
        <attributeEditorField name="loeschung_wann" showLabel="1" index="45"/>
        <attributeEditorField name="loeschung_bemerkung" showLabel="1" index="47"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer visibilityExpression="" name="Pflege" showLabel="1" columnCount="1" visibilityExpressionEnabled="0" groupBox="0">
      <attributeEditorField name="erhaltungszustand" showLabel="1" index="22"/>
      <attributeEditorField name="gefahr_historisch" showLabel="1" index="-1"/>
      <attributeEditorField name="pflege_rueckstand" showLabel="1" index="16"/>
      <attributeEditorField name="pflege_bedarf" showLabel="1" index="15"/>
      <attributeEditorField name="pflege" showLabel="1" index="17"/>
      <attributeEditorField name="pflege_entwicklung" showLabel="1" index="14"/>
      <attributeEditorField name="pflege_zustand" showLabel="1" index="55"/>
      <attributeEditorField name="schutzstatus" showLabel="1" index="56"/>
    </attributeEditorContainer>
    <attributeEditorContainer visibilityExpression="" name="Geometrie" showLabel="1" columnCount="1" visibilityExpressionEnabled="0" groupBox="0">
      <attributeEditorField name="flaeche" showLabel="1" index="2"/>
      <attributeEditorField name="umfang" showLabel="1" index="3"/>
      <attributeEditorField name="num_geom" showLabel="1" index="4"/>
    </attributeEditorContainer>
    <attributeEditorContainer visibilityExpression="" name="Störungen" showLabel="1" columnCount="1" visibilityExpressionEnabled="0" groupBox="0">
      <attributeEditorField name="stoerungen" showLabel="1" index="-1"/>
    </attributeEditorContainer>
    <attributeEditorContainer visibilityExpression="" name="Beeinträchtigungen" showLabel="1" columnCount="1" visibilityExpressionEnabled="0" groupBox="0">
      <attributeEditorField name="beeintraechtigung_ids" showLabel="1" index="51"/>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field name="aenderungen" editable="1"/>
    <field name="angrenzendebereiche" editable="1"/>
    <field name="arten" editable="1"/>
    <field name="ausbildung" editable="1"/>
    <field name="bearbeitung" editable="1"/>
    <field name="bearbeitung_bemerkung" editable="1"/>
    <field name="bearbeitung_wann" editable="1"/>
    <field name="bearbeitung_wer" editable="1"/>
    <field name="beeintraechtigung_ids" editable="1"/>
    <field name="bekanntmachung" editable="1"/>
    <field name="bekanntmachung_bemerkung" editable="1"/>
    <field name="bekanntmachung_wann" editable="1"/>
    <field name="bekanntmachung_wer" editable="1"/>
    <field name="beschreibung" editable="1"/>
    <field name="biotopkuerzel" editable="1"/>
    <field name="biotoptyp2_art_nr" editable="1"/>
    <field name="biotoptyp_art_nr" editable="1"/>
    <field name="bt_code" editable="1"/>
    <field name="eigentumsartnr" editable="1"/>
    <field name="erfassung" editable="1"/>
    <field name="erfassung_bemerkung" editable="1"/>
    <field name="erfassung_wann" editable="1"/>
    <field name="erfassung_wer" editable="1"/>
    <field name="erhaltungszustand" editable="1"/>
    <field name="erhaltungszustand_orig" editable="0"/>
    <field name="fanr" editable="1"/>
    <field name="flaeche" editable="1"/>
    <field name="gefahr_historisch" editable="0"/>
    <field name="gefahrlevel" editable="1"/>
    <field name="geprueft" editable="1"/>
    <field name="identity" editable="0"/>
    <field name="imreviernr" editable="1"/>
    <field name="loeschung" editable="1"/>
    <field name="loeschung_bemerkung" editable="1"/>
    <field name="loeschung_wann" editable="1"/>
    <field name="loeschung_wer" editable="1"/>
    <field name="name" editable="1"/>
    <field name="naturraumflussauennr" editable="1"/>
    <field name="naturraumnr" editable="1"/>
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
    <field name="pflege_zustand_orig" editable="1"/>
    <field name="pilze" editable="0"/>
    <field name="reviernr" editable="1"/>
    <field name="schutzstatus" editable="1"/>
    <field name="schutzstatus_orig" editable="0"/>
    <field name="status" editable="1"/>
    <field name="stoer_gefahrlvl_gefahrhist" editable="1"/>
    <field name="stoerungen" editable="0"/>
    <field name="tiere" editable="0"/>
    <field name="tk25" editable="1"/>
    <field name="umfang" editable="1"/>
    <field name="unr" editable="1"/>
    <field name="waldbiotop" editable="1"/>
    <field name="wert" editable="1"/>
    <field name="wertbestimmend" editable="1"/>
    <field name="werterhaltend" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="aenderungen" labelOnTop="0"/>
    <field name="angrenzendebereiche" labelOnTop="0"/>
    <field name="arten" labelOnTop="0"/>
    <field name="ausbildung" labelOnTop="0"/>
    <field name="bearbeitung" labelOnTop="0"/>
    <field name="bearbeitung_bemerkung" labelOnTop="1"/>
    <field name="bearbeitung_wann" labelOnTop="1"/>
    <field name="bearbeitung_wer" labelOnTop="1"/>
    <field name="beeintraechtigung_ids" labelOnTop="1"/>
    <field name="bekanntmachung" labelOnTop="0"/>
    <field name="bekanntmachung_bemerkung" labelOnTop="1"/>
    <field name="bekanntmachung_wann" labelOnTop="1"/>
    <field name="bekanntmachung_wer" labelOnTop="1"/>
    <field name="beschreibung" labelOnTop="1"/>
    <field name="biotopkuerzel" labelOnTop="0"/>
    <field name="biotoptyp2_art_nr" labelOnTop="0"/>
    <field name="biotoptyp_art_nr" labelOnTop="0"/>
    <field name="bt_code" labelOnTop="0"/>
    <field name="eigentumsartnr" labelOnTop="0"/>
    <field name="erfassung" labelOnTop="0"/>
    <field name="erfassung_bemerkung" labelOnTop="1"/>
    <field name="erfassung_wann" labelOnTop="1"/>
    <field name="erfassung_wer" labelOnTop="1"/>
    <field name="erhaltungszustand" labelOnTop="0"/>
    <field name="erhaltungszustand_orig" labelOnTop="0"/>
    <field name="fanr" labelOnTop="0"/>
    <field name="flaeche" labelOnTop="1"/>
    <field name="gefahr_historisch" labelOnTop="0"/>
    <field name="gefahrlevel" labelOnTop="0"/>
    <field name="geprueft" labelOnTop="0"/>
    <field name="identity" labelOnTop="0"/>
    <field name="imreviernr" labelOnTop="0"/>
    <field name="loeschung" labelOnTop="0"/>
    <field name="loeschung_bemerkung" labelOnTop="1"/>
    <field name="loeschung_wann" labelOnTop="1"/>
    <field name="loeschung_wer" labelOnTop="1"/>
    <field name="name" labelOnTop="0"/>
    <field name="naturraumflussauennr" labelOnTop="0"/>
    <field name="naturraumnr" labelOnTop="0"/>
    <field name="num_geom" labelOnTop="0"/>
    <field name="objnr" labelOnTop="0"/>
    <field name="objnr_landkreise" labelOnTop="0"/>
    <field name="objnr_sbk" labelOnTop="0"/>
    <field name="ogc_fid" labelOnTop="0"/>
    <field name="pflanzen" labelOnTop="0"/>
    <field name="pflege" labelOnTop="0"/>
    <field name="pflege_bedarf" labelOnTop="0"/>
    <field name="pflege_entwicklung" labelOnTop="0"/>
    <field name="pflege_rueckstand" labelOnTop="0"/>
    <field name="pflege_zustand" labelOnTop="0"/>
    <field name="pflege_zustand_orig" labelOnTop="0"/>
    <field name="pilze" labelOnTop="0"/>
    <field name="reviernr" labelOnTop="0"/>
    <field name="schutzstatus" labelOnTop="0"/>
    <field name="schutzstatus_orig" labelOnTop="0"/>
    <field name="status" labelOnTop="0"/>
    <field name="stoer_gefahrlvl_gefahrhist" labelOnTop="0"/>
    <field name="stoerungen" labelOnTop="0"/>
    <field name="tiere" labelOnTop="0"/>
    <field name="tk25" labelOnTop="0"/>
    <field name="umfang" labelOnTop="1"/>
    <field name="unr" labelOnTop="0"/>
    <field name="waldbiotop" labelOnTop="0"/>
    <field name="wert" labelOnTop="0"/>
    <field name="wertbestimmend" labelOnTop="0"/>
    <field name="werterhaltend" labelOnTop="0"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"ogc_fid"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
