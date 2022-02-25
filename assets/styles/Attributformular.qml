<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis readOnly="1" simplifyDrawingHints="1" simplifyDrawingTol="1" simplifyMaxScale="1" styleCategories="AllStyleCategories" labelsEnabled="1" hasScaleBasedVisibilityFlag="0" minScale="100000000" simplifyAlgorithm="0" simplifyLocal="1" maxScale="0" version="3.16.7-Hannover">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <temporal durationField="" startField="" startExpression="" endField="" enabled="0" fixedDuration="0" durationUnit="min" endExpression="" accumulate="0" mode="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 forceraster="0" enableorderby="1" type="singleSymbol" symbollevels="0">
    <symbols>
      <symbol clip_to_extent="1" alpha="1" force_rhr="0" name="0" type="fill">
        <layer class="SimpleFill" enabled="1" locked="0" pass="0">
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
      <orderByClause asc="0" nullsFirst="1">distance(  $geometry,  translate(    @map_extent_center,    1000 * @map_extent_width * cos( radians( @qgis_25d_angle + 180 ) ),    1000 * @map_extent_width * sin( radians( @qgis_25d_angle + 180 ) )  ))</orderByClause>
    </orderby>
  </renderer-v2>
  <labeling type="simple">
    <settings calloutType="simple">
      <text-style isExpression="0" textOrientation="horizontal" textOpacity="1" multilineHeight="1" textColor="0,0,0,255" fontItalic="0" fontStrikeout="0" capitalization="0" useSubstitutions="0" allowHtml="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontWordSpacing="0" fieldName="biotoptyp2_art_nr" fontKerning="1" fontFamily="Noto Sans" fontUnderline="0" fontSizeUnit="Point" fontWeight="50" previewBkgrdColor="255,255,255,255" blendMode="0" fontLetterSpacing="0" namedStyle="" fontSize="10">
        <text-buffer bufferSizeUnits="MM" bufferOpacity="1" bufferDraw="0" bufferColor="255,255,255,255" bufferSize="1" bufferNoFill="1" bufferJoinStyle="128" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0"/>
        <text-mask maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskSize="0" maskedSymbolLayers="" maskSizeUnits="MM" maskEnabled="0" maskJoinStyle="128" maskOpacity="1"/>
        <background shapeDraw="0" shapeBlendMode="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255" shapeJoinStyle="64" shapeRadiiX="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeSizeX="0" shapeOffsetX="0" shapeSizeY="0" shapeRadiiY="0" shapeFillColor="255,255,255,255" shapeSizeType="0" shapeSizeUnit="MM" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeOpacity="1" shapeRotation="0" shapeType="0" shapeSVGFile="" shapeBorderWidth="0" shapeOffsetY="0" shapeBorderWidthUnit="MM" shapeOffsetUnit="MM">
          <symbol clip_to_extent="1" alpha="1" force_rhr="0" name="markerSymbol" type="marker">
            <layer class="SimpleMarker" enabled="1" locked="0" pass="0">
              <prop v="0" k="angle"/>
              <prop v="225,89,137,255" k="color"/>
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
        <shadow shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowUnder="0" shadowRadiusUnit="MM" shadowColor="0,0,0,255" shadowOffsetAngle="135" shadowDraw="0" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowOpacity="0.7" shadowBlendMode="6" shadowRadius="1.5" shadowScale="100" shadowOffsetGlobal="1" shadowOffsetUnit="MM" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0"/>
        <dd_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </dd_properties>
        <substitutions/>
      </text-style>
      <text-format rightDirectionSymbol=">" wrapChar="" useMaxLineLengthForAutoWrap="1" addDirectionSymbol="0" formatNumbers="0" leftDirectionSymbol="&lt;" reverseDirectionSymbol="0" decimals="3" plussign="0" placeDirectionSymbol="0" autoWrapLength="0" multilineAlign="0"/>
      <placement offsetType="0" maxCurvedCharAngleOut="-25" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" priority="5" repeatDistanceUnits="MM" geometryGeneratorEnabled="0" placement="0" repeatDistance="0" layerType="PolygonGeometry" yOffset="0" placementFlags="10" lineAnchorType="0" quadOffset="4" overrunDistance="0" offsetUnits="MM" rotationAngle="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" preserveRotation="1" xOffset="0" dist="0" distUnits="MM" centroidWhole="0" geometryGenerator="" maxCurvedCharAngleIn="25" lineAnchorPercent="0.5" centroidInside="0" polygonPlacementFlags="2" distMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorType="PointGeometry"/>
      <rendering fontLimitPixelSize="0" obstacle="1" displayAll="0" fontMaxPixelSize="10000" mergeLines="0" scaleVisibility="1" limitNumLabels="0" zIndex="0" scaleMin="0" obstacleFactor="1" labelPerPart="0" fontMinPixelSize="3" scaleMax="10000" minFeatureSize="0" maxNumLabels="2000" upsidedownLabels="0" drawLabels="1" obstacleType="0"/>
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
          <Option name="lineSymbol" value="&lt;symbol clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; force_rhr=&quot;0&quot; name=&quot;symbol&quot; type=&quot;line&quot;>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; locked=&quot;0&quot; pass=&quot;0&quot;>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
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
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Pie" attributeLegend="1">
    <DiagramCategory scaleBasedVisibility="0" diagramOrientation="Up" rotationOffset="270" sizeType="MM" height="15" labelPlacementMethod="XHeight" spacing="0" scaleDependency="Area" spacingUnitScale="3x:0,0,0,0,0,0" backgroundColor="#ffffff" enabled="0" direction="1" spacingUnit="MM" backgroundAlpha="255" penAlpha="255" lineSizeType="MM" width="15" barWidth="5" lineSizeScale="3x:0,0,0,0,0,0" minimumSize="0" minScaleDenominator="0" penColor="#000000" opacity="1" penWidth="0" sizeScale="3x:0,0,0,0,0,0" maxScaleDenominator="1e+08" showAxis="0">
      <fontProperties style="Regular" description="Noto Sans,10,-1,0,50,0,0,0,0,0,Regular"/>
      <attribute field="&quot;flaeche&quot;" label="flaeche" color="#6830e8"/>
      <axisSymbol>
        <symbol clip_to_extent="1" alpha="1" force_rhr="0" name="" type="line">
          <layer class="SimpleLine" enabled="1" locked="0" pass="0">
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
  <DiagramLayerSettings showAll="1" linePlacementFlags="18" obstacle="0" priority="0" placement="1" zIndex="0" dist="0">
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
    <field configurationFlags="None" name="ogc_fid">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="identity">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="flaeche">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="umfang">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="num_geom">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="objnr">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="objnr_sbk">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="objnr_landkreise">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="tk25">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="unr">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="beschreibung">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="true" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="angrenzendebereiche">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="ausbildung">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="pflege_zustand_orig">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="pflege_entwicklung">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="pflege_bedarf">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option name="CheckedState" value="true" type="QString"/>
            <Option name="UncheckedState" value="false" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="pflege_rueckstand">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="pflege">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="true" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="massnahmen_cdbf0e92_30d9_4b5f_a9fa_5a19449c687c" type="QString"/>
            <Option name="NofColumns" value="2" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="massnahme" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="bt_code">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="wert">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="schutzstatus_orig">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="biotopkuerzel">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="erhaltungszustand">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="erhaltungszustand_9c9b6695_78ce_4189_997b_7c093e5d7a03" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="wert" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="erfassung">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="bearbeitung">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="loeschung">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="bekanntmachung">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="geprueft">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option name="CheckedState" value="true" type="QString"/>
            <Option name="UncheckedState" value="false" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="biotoptyp_art_nr">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="false" type="bool"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="id_biot_alt" type="QString"/>
            <Option name="Layer" value="biotoptypen_5cd303c0_a9c7_4ee7_8816_dc1604e52a4f" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="name_2002" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="biotoptyp2_art_nr">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="false" type="bool"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="nummer" type="QString"/>
            <Option name="Layer" value="biotoptypen_5cd303c0_a9c7_4ee7_8816_dc1604e52a4f" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="name_2012" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="gefahrlevel">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="naturraumnr">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="naturraumflussauennr">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="fanr">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="reviernr">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="imreviernr">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="eigentumsartnr">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="waldbiotop">
      <editWidget type="CheckBox">
        <config>
          <Option type="Map">
            <Option name="CheckedState" value="true" type="QString"/>
            <Option name="UncheckedState" value="false" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="name">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="status">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="erfassung_wann">
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
    <field configurationFlags="None" name="erfassung_wer">
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
    <field configurationFlags="None" name="erfassung_bemerkung">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="true" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="bearbeitung_wann">
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
    <field configurationFlags="None" name="bearbeitung_wer">
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
    <field configurationFlags="None" name="bearbeitung_bemerkung">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="true" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="loeschung_wann">
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
    <field configurationFlags="None" name="loeschung_wer">
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
    <field configurationFlags="None" name="loeschung_bemerkung">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="true" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="bekanntmachung_wann">
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
    <field configurationFlags="None" name="bekanntmachung_wer">
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
    <field configurationFlags="None" name="bekanntmachung_bemerkung">
      <editWidget type="TextEdit">
        <config>
          <Option type="Map">
            <Option name="IsMultiline" value="true" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="tiere">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="pflanzen">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="pilze">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="stoerungen">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="beeintraechtigung_ids">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="true" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="beeintraechtigungen_249282b4_81fe_4134_a3d1_bac6176161a7" type="QString"/>
            <Option name="NofColumns" value="2" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="beeintraechtigungen" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="gefahr_historisch">
      <editWidget type="Hidden">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="aenderungen">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="aenderungen_32584e1a_9e41_4e8c_a023_f1950d4c917f" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="aenderung" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field configurationFlags="None" name="pflege_zustand">
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
    <field configurationFlags="None" name="schutzstatus">
      <editWidget type="ValueRelation">
        <config>
          <Option type="Map">
            <Option name="AllowMulti" value="false" type="bool"/>
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="schutzstatus_0167575d_c115_4b6c_89b8_77307c493569" type="QString"/>
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
    <alias field="ogc_fid" name="" index="0"/>
    <alias field="identity" name="" index="1"/>
    <alias field="flaeche" name="Fläche" index="2"/>
    <alias field="umfang" name="Umfang" index="3"/>
    <alias field="num_geom" name="Anzahl Geometrien" index="4"/>
    <alias field="objnr" name="" index="5"/>
    <alias field="objnr_sbk" name="" index="6"/>
    <alias field="objnr_landkreise" name="" index="7"/>
    <alias field="tk25" name="TK 25" index="8"/>
    <alias field="unr" name="" index="9"/>
    <alias field="beschreibung" name="Beschreibung" index="10"/>
    <alias field="angrenzendebereiche" name="" index="11"/>
    <alias field="ausbildung" name="Ausbildung" index="12"/>
    <alias field="pflege_zustand_orig" name="" index="13"/>
    <alias field="pflege_entwicklung" name="Hinweise zur Pflege" index="14"/>
    <alias field="pflege_bedarf" name="Pflegebedarf" index="15"/>
    <alias field="pflege_rueckstand" name="" index="16"/>
    <alias field="pflege" name="" index="17"/>
    <alias field="bt_code" name="" index="18"/>
    <alias field="wert" name="Wertbestimmend" index="19"/>
    <alias field="schutzstatus_orig" name="" index="20"/>
    <alias field="biotopkuerzel" name="Biotopkürzel" index="21"/>
    <alias field="erhaltungszustand" name="Erhaltungszustand" index="22"/>
    <alias field="erfassung" name="" index="23"/>
    <alias field="bearbeitung" name="" index="24"/>
    <alias field="loeschung" name="" index="25"/>
    <alias field="bekanntmachung" name="" index="26"/>
    <alias field="geprueft" name="Geprüft" index="27"/>
    <alias field="biotoptyp_art_nr" name="Biotoptyp alt" index="28"/>
    <alias field="biotoptyp2_art_nr" name="Biotoptyp" index="29"/>
    <alias field="gefahrlevel" name="" index="30"/>
    <alias field="naturraumnr" name="" index="31"/>
    <alias field="naturraumflussauennr" name="" index="32"/>
    <alias field="fanr" name="" index="33"/>
    <alias field="reviernr" name="" index="34"/>
    <alias field="imreviernr" name="" index="35"/>
    <alias field="eigentumsartnr" name="" index="36"/>
    <alias field="waldbiotop" name="Waldbiotop" index="37"/>
    <alias field="name" name="Name des Biotops" index="38"/>
    <alias field="status" name="Status" index="39"/>
    <alias field="erfassung_wann" name="Kartierungsdatum" index="40"/>
    <alias field="erfassung_wer" name="Kartierer" index="41"/>
    <alias field="erfassung_bemerkung" name="Herkunft Daten" index="42"/>
    <alias field="bearbeitung_wann" name="Datum der Bearbeitung" index="43"/>
    <alias field="bearbeitung_wer" name="Bearbeiter" index="44"/>
    <alias field="bearbeitung_bemerkung" name="Datenstand Bearbeitung" index="45"/>
    <alias field="loeschung_wann" name="Datum der Archivierung" index="46"/>
    <alias field="loeschung_wer" name="archiviert von" index="47"/>
    <alias field="loeschung_bemerkung" name="Grund der Archivierung" index="48"/>
    <alias field="bekanntmachung_wann" name="Bekanntmachungsdatum" index="49"/>
    <alias field="bekanntmachung_wer" name="Bearbeiter" index="50"/>
    <alias field="bekanntmachung_bemerkung" name="Bemerkungen zur Bekanntmachung" index="51"/>
    <alias field="tiere" name="Tiere" index="52"/>
    <alias field="pflanzen" name="Pflanzen" index="53"/>
    <alias field="pilze" name="Pilze" index="54"/>
    <alias field="stoerungen" name="Störungen" index="55"/>
    <alias field="beeintraechtigung_ids" name="Beeinträchtigungen" index="56"/>
    <alias field="gefahr_historisch" name="" index="57"/>
    <alias field="aenderungen" name="" index="58"/>
    <alias field="pflege_zustand" name="Pflege Zustand" index="59"/>
    <alias field="schutzstatus" name="Schutzstatus" index="60"/>
  </aliases>
  <defaults>
    <default field="ogc_fid" expression="" applyOnUpdate="0"/>
    <default field="identity" expression="" applyOnUpdate="0"/>
    <default field="flaeche" expression=" $area " applyOnUpdate="0"/>
    <default field="umfang" expression=" $perimeter " applyOnUpdate="0"/>
    <default field="num_geom" expression="" applyOnUpdate="0"/>
    <default field="objnr" expression="" applyOnUpdate="0"/>
    <default field="objnr_sbk" expression="" applyOnUpdate="0"/>
    <default field="objnr_landkreise" expression="" applyOnUpdate="0"/>
    <default field="tk25" expression="" applyOnUpdate="0"/>
    <default field="unr" expression="" applyOnUpdate="0"/>
    <default field="beschreibung" expression="" applyOnUpdate="0"/>
    <default field="angrenzendebereiche" expression="" applyOnUpdate="0"/>
    <default field="ausbildung" expression="" applyOnUpdate="0"/>
    <default field="pflege_zustand_orig" expression="" applyOnUpdate="0"/>
    <default field="pflege_entwicklung" expression="" applyOnUpdate="0"/>
    <default field="pflege_bedarf" expression="" applyOnUpdate="0"/>
    <default field="pflege_rueckstand" expression="" applyOnUpdate="0"/>
    <default field="pflege" expression="" applyOnUpdate="0"/>
    <default field="bt_code" expression="" applyOnUpdate="0"/>
    <default field="wert" expression="" applyOnUpdate="0"/>
    <default field="schutzstatus_orig" expression="" applyOnUpdate="0"/>
    <default field="biotopkuerzel" expression="" applyOnUpdate="0"/>
    <default field="erhaltungszustand" expression="" applyOnUpdate="0"/>
    <default field="erfassung" expression="" applyOnUpdate="0"/>
    <default field="bearbeitung" expression="" applyOnUpdate="0"/>
    <default field="loeschung" expression="" applyOnUpdate="0"/>
    <default field="bekanntmachung" expression="" applyOnUpdate="0"/>
    <default field="geprueft" expression="" applyOnUpdate="0"/>
    <default field="biotoptyp_art_nr" expression="" applyOnUpdate="0"/>
    <default field="biotoptyp2_art_nr" expression="" applyOnUpdate="0"/>
    <default field="gefahrlevel" expression="" applyOnUpdate="0"/>
    <default field="naturraumnr" expression="" applyOnUpdate="0"/>
    <default field="naturraumflussauennr" expression="" applyOnUpdate="0"/>
    <default field="fanr" expression="" applyOnUpdate="0"/>
    <default field="reviernr" expression="" applyOnUpdate="0"/>
    <default field="imreviernr" expression="" applyOnUpdate="0"/>
    <default field="eigentumsartnr" expression="" applyOnUpdate="0"/>
    <default field="waldbiotop" expression="" applyOnUpdate="0"/>
    <default field="name" expression="" applyOnUpdate="0"/>
    <default field="status" expression="" applyOnUpdate="0"/>
    <default field="erfassung_wann" expression="" applyOnUpdate="0"/>
    <default field="erfassung_wer" expression="" applyOnUpdate="0"/>
    <default field="erfassung_bemerkung" expression="" applyOnUpdate="0"/>
    <default field="bearbeitung_wann" expression="" applyOnUpdate="0"/>
    <default field="bearbeitung_wer" expression="" applyOnUpdate="0"/>
    <default field="bearbeitung_bemerkung" expression="" applyOnUpdate="0"/>
    <default field="loeschung_wann" expression="" applyOnUpdate="0"/>
    <default field="loeschung_wer" expression="" applyOnUpdate="0"/>
    <default field="loeschung_bemerkung" expression="" applyOnUpdate="0"/>
    <default field="bekanntmachung_wann" expression="" applyOnUpdate="0"/>
    <default field="bekanntmachung_wer" expression="" applyOnUpdate="0"/>
    <default field="bekanntmachung_bemerkung" expression="" applyOnUpdate="0"/>
    <default field="tiere" expression="" applyOnUpdate="0"/>
    <default field="pflanzen" expression="" applyOnUpdate="0"/>
    <default field="pilze" expression="" applyOnUpdate="0"/>
    <default field="stoerungen" expression="" applyOnUpdate="0"/>
    <default field="beeintraechtigung_ids" expression="" applyOnUpdate="0"/>
    <default field="gefahr_historisch" expression="" applyOnUpdate="0"/>
    <default field="aenderungen" expression="" applyOnUpdate="0"/>
    <default field="pflege_zustand" expression="" applyOnUpdate="0"/>
    <default field="schutzstatus" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="ogc_fid" exp_strength="0" unique_strength="1" notnull_strength="1" constraints="3"/>
    <constraint field="identity" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="flaeche" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="umfang" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="num_geom" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="objnr" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="objnr_sbk" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="objnr_landkreise" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="tk25" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="unr" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="beschreibung" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="angrenzendebereiche" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="ausbildung" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="pflege_zustand_orig" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="pflege_entwicklung" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="pflege_bedarf" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="pflege_rueckstand" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="pflege" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="bt_code" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="wert" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="schutzstatus_orig" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="biotopkuerzel" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="erhaltungszustand" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="erfassung" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="bearbeitung" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="loeschung" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="bekanntmachung" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="geprueft" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="biotoptyp_art_nr" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="biotoptyp2_art_nr" exp_strength="0" unique_strength="0" notnull_strength="2" constraints="1"/>
    <constraint field="gefahrlevel" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="naturraumnr" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="naturraumflussauennr" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="fanr" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="reviernr" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="imreviernr" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="eigentumsartnr" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="waldbiotop" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="name" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="status" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="erfassung_wann" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="erfassung_wer" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="erfassung_bemerkung" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="bearbeitung_wann" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="bearbeitung_wer" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="bearbeitung_bemerkung" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="loeschung_wann" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="loeschung_wer" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="loeschung_bemerkung" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="bekanntmachung_wann" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="bekanntmachung_wer" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="bekanntmachung_bemerkung" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="tiere" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="pflanzen" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="pilze" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="stoerungen" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="beeintraechtigung_ids" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="gefahr_historisch" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="aenderungen" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="pflege_zustand" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="schutzstatus" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="ogc_fid" desc="" exp=""/>
    <constraint field="identity" desc="" exp=""/>
    <constraint field="flaeche" desc="" exp=""/>
    <constraint field="umfang" desc="" exp=""/>
    <constraint field="num_geom" desc="" exp=""/>
    <constraint field="objnr" desc="" exp=""/>
    <constraint field="objnr_sbk" desc="" exp=""/>
    <constraint field="objnr_landkreise" desc="" exp=""/>
    <constraint field="tk25" desc="" exp=""/>
    <constraint field="unr" desc="" exp=""/>
    <constraint field="beschreibung" desc="" exp=""/>
    <constraint field="angrenzendebereiche" desc="" exp=""/>
    <constraint field="ausbildung" desc="" exp=""/>
    <constraint field="pflege_zustand_orig" desc="" exp=""/>
    <constraint field="pflege_entwicklung" desc="" exp=""/>
    <constraint field="pflege_bedarf" desc="" exp=""/>
    <constraint field="pflege_rueckstand" desc="" exp=""/>
    <constraint field="pflege" desc="" exp=""/>
    <constraint field="bt_code" desc="" exp=""/>
    <constraint field="wert" desc="" exp=""/>
    <constraint field="schutzstatus_orig" desc="" exp=""/>
    <constraint field="biotopkuerzel" desc="" exp=""/>
    <constraint field="erhaltungszustand" desc="" exp=""/>
    <constraint field="erfassung" desc="" exp=""/>
    <constraint field="bearbeitung" desc="" exp=""/>
    <constraint field="loeschung" desc="" exp=""/>
    <constraint field="bekanntmachung" desc="" exp=""/>
    <constraint field="geprueft" desc="" exp=""/>
    <constraint field="biotoptyp_art_nr" desc="" exp=""/>
    <constraint field="biotoptyp2_art_nr" desc="" exp=""/>
    <constraint field="gefahrlevel" desc="" exp=""/>
    <constraint field="naturraumnr" desc="" exp=""/>
    <constraint field="naturraumflussauennr" desc="" exp=""/>
    <constraint field="fanr" desc="" exp=""/>
    <constraint field="reviernr" desc="" exp=""/>
    <constraint field="imreviernr" desc="" exp=""/>
    <constraint field="eigentumsartnr" desc="" exp=""/>
    <constraint field="waldbiotop" desc="" exp=""/>
    <constraint field="name" desc="" exp=""/>
    <constraint field="status" desc="" exp=""/>
    <constraint field="erfassung_wann" desc="" exp=""/>
    <constraint field="erfassung_wer" desc="" exp=""/>
    <constraint field="erfassung_bemerkung" desc="" exp=""/>
    <constraint field="bearbeitung_wann" desc="" exp=""/>
    <constraint field="bearbeitung_wer" desc="" exp=""/>
    <constraint field="bearbeitung_bemerkung" desc="" exp=""/>
    <constraint field="loeschung_wann" desc="" exp=""/>
    <constraint field="loeschung_wer" desc="" exp=""/>
    <constraint field="loeschung_bemerkung" desc="" exp=""/>
    <constraint field="bekanntmachung_wann" desc="" exp=""/>
    <constraint field="bekanntmachung_wer" desc="" exp=""/>
    <constraint field="bekanntmachung_bemerkung" desc="" exp=""/>
    <constraint field="tiere" desc="" exp=""/>
    <constraint field="pflanzen" desc="" exp=""/>
    <constraint field="pilze" desc="" exp=""/>
    <constraint field="stoerungen" desc="" exp=""/>
    <constraint field="beeintraechtigung_ids" desc="" exp=""/>
    <constraint field="gefahr_historisch" desc="" exp=""/>
    <constraint field="aenderungen" desc="" exp=""/>
    <constraint field="pflege_zustand" desc="" exp=""/>
    <constraint field="schutzstatus" desc="" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig sortOrder="1" actionWidgetStyle="dropDown" sortExpression="&quot;pflege&quot;">
    <columns>
      <column hidden="0" name="ogc_fid" width="-1" type="field"/>
      <column hidden="0" name="identity" width="-1" type="field"/>
      <column hidden="0" name="objnr_sbk" width="-1" type="field"/>
      <column hidden="0" name="unr" width="-1" type="field"/>
      <column hidden="0" name="ausbildung" width="-1" type="field"/>
      <column hidden="0" name="pflege_zustand" width="-1" type="field"/>
      <column hidden="0" name="pflege_entwicklung" width="-1" type="field"/>
      <column hidden="0" name="pflege_bedarf" width="-1" type="field"/>
      <column hidden="0" name="pflege_rueckstand" width="-1" type="field"/>
      <column hidden="0" name="pflege" width="483" type="field"/>
      <column hidden="0" name="bt_code" width="-1" type="field"/>
      <column hidden="0" name="wert" width="-1" type="field"/>
      <column hidden="0" name="schutzstatus" width="-1" type="field"/>
      <column hidden="0" name="biotopkuerzel" width="-1" type="field"/>
      <column hidden="0" name="erhaltungszustand" width="-1" type="field"/>
      <column hidden="0" name="geprueft" width="-1" type="field"/>
      <column hidden="0" name="biotoptyp_art_nr" width="-1" type="field"/>
      <column hidden="0" name="biotoptyp2_art_nr" width="-1" type="field"/>
      <column hidden="0" name="waldbiotop" width="-1" type="field"/>
      <column hidden="0" name="objnr_landkreise" width="-1" type="field"/>
      <column hidden="0" name="tk25" width="-1" type="field"/>
      <column hidden="0" name="name" width="-1" type="field"/>
      <column hidden="0" name="status" width="-1" type="field"/>
      <column hidden="0" name="flaeche" width="-1" type="field"/>
      <column hidden="0" name="num_geom" width="-1" type="field"/>
      <column hidden="0" name="objnr" width="-1" type="field"/>
      <column hidden="0" name="umfang" width="-1" type="field"/>
      <column hidden="0" name="beschreibung" width="-1" type="field"/>
      <column hidden="0" name="erfassung_wann" width="-1" type="field"/>
      <column hidden="0" name="erfassung_wer" width="-1" type="field"/>
      <column hidden="0" name="erfassung_bemerkung" width="-1" type="field"/>
      <column hidden="0" name="bearbeitung_wann" width="-1" type="field"/>
      <column hidden="0" name="bearbeitung_wer" width="-1" type="field"/>
      <column hidden="0" name="bearbeitung_bemerkung" width="-1" type="field"/>
      <column hidden="0" name="loeschung_wann" width="-1" type="field"/>
      <column hidden="0" name="loeschung_wer" width="-1" type="field"/>
      <column hidden="0" name="loeschung_bemerkung" width="-1" type="field"/>
      <column hidden="0" name="bekanntmachung_wann" width="-1" type="field"/>
      <column hidden="0" name="bekanntmachung_wer" width="-1" type="field"/>
      <column hidden="0" name="bekanntmachung_bemerkung" width="-1" type="field"/>
      <column hidden="0" name="tiere" width="-1" type="field"/>
      <column hidden="0" name="pflanzen" width="-1" type="field"/>
      <column hidden="0" name="pilze" width="-1" type="field"/>
      <column hidden="0" name="stoerungen" width="-1" type="field"/>
      <column hidden="0" name="beeintraechtigung_ids" width="-1" type="field"/>
      <column hidden="0" name="gefahr_historisch" width="-1" type="field"/>
      <column hidden="1" width="-1" type="actions"/>
      <column hidden="0" name="schutzstatus_orig" width="-1" type="field"/>
      <column hidden="0" name="pflege_zustand_orig" width="-1" type="field"/>
      <column hidden="0" name="aenderungen" width="-1" type="field"/>
      <column hidden="0" name="angrenzendebereiche" width="-1" type="field"/>
      <column hidden="0" name="erfassung" width="-1" type="field"/>
      <column hidden="0" name="bearbeitung" width="-1" type="field"/>
      <column hidden="0" name="loeschung" width="-1" type="field"/>
      <column hidden="0" name="bekanntmachung" width="-1" type="field"/>
      <column hidden="0" name="gefahrlevel" width="-1" type="field"/>
      <column hidden="0" name="naturraumnr" width="-1" type="field"/>
      <column hidden="0" name="naturraumflussauennr" width="-1" type="field"/>
      <column hidden="0" name="fanr" width="-1" type="field"/>
      <column hidden="0" name="reviernr" width="-1" type="field"/>
      <column hidden="0" name="imreviernr" width="-1" type="field"/>
      <column hidden="0" name="eigentumsartnr" width="-1" type="field"/>
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
    <attributeEditorField showLabel="1" name="name" index="38"/>
    <attributeEditorField showLabel="1" name="ausbildung" index="12"/>
    <attributeEditorField showLabel="1" name="arten" index="-1"/>
    <attributeEditorField showLabel="1" name="werterhaltend" index="-1"/>
    <attributeEditorField showLabel="1" name="waldbiotop" index="37"/>
    <attributeEditorField showLabel="1" name="status" index="39"/>
    <attributeEditorField showLabel="1" name="beschreibung" index="10"/>
    <attributeEditorField showLabel="1" name="geprueft" index="27"/>
    <attributeEditorContainer showLabel="1" columnCount="1" groupBox="0" visibilityExpressionEnabled="0" name="Basisdaten" visibilityExpression="">
      <attributeEditorField showLabel="1" name="biotopkuerzel" index="21"/>
      <attributeEditorField showLabel="1" name="ogc_fid" index="0"/>
      <attributeEditorField showLabel="1" name="identity" index="1"/>
      <attributeEditorField showLabel="1" name="unr" index="9"/>
      <attributeEditorField showLabel="1" name="bt_code" index="18"/>
      <attributeEditorField showLabel="1" name="biotoptyp_art_nr" index="28"/>
      <attributeEditorField showLabel="1" name="biotoptyp2_art_nr" index="29"/>
      <attributeEditorField showLabel="1" name="tk25" index="8"/>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" columnCount="1" groupBox="0" visibilityExpressionEnabled="0" name="Erfassung und Bearbeitung" visibilityExpression="">
      <attributeEditorContainer showLabel="1" columnCount="3" groupBox="1" visibilityExpressionEnabled="0" name="Erfassung" visibilityExpression="">
        <attributeEditorField showLabel="1" name="erfassung_wer" index="41"/>
        <attributeEditorField showLabel="1" name="erfassung_wann" index="40"/>
        <attributeEditorField showLabel="1" name="erfassung_bemerkung" index="42"/>
        <attributeEditorField showLabel="1" name="bekanntmachung_wer" index="50"/>
        <attributeEditorField showLabel="1" name="bekanntmachung_wann" index="49"/>
        <attributeEditorField showLabel="1" name="bekanntmachung_bemerkung" index="51"/>
      </attributeEditorContainer>
      <attributeEditorContainer showLabel="1" columnCount="3" groupBox="1" visibilityExpressionEnabled="0" name="Bearbeiten" visibilityExpression="">
        <attributeEditorField showLabel="1" name="bearbeitung_wer" index="44"/>
        <attributeEditorField showLabel="1" name="bearbeitung_wann" index="43"/>
        <attributeEditorField showLabel="1" name="bearbeitung_bemerkung" index="45"/>
        <attributeEditorField showLabel="1" name="loeschung_wer" index="47"/>
        <attributeEditorField showLabel="1" name="loeschung_wann" index="46"/>
        <attributeEditorField showLabel="1" name="loeschung_bemerkung" index="48"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" columnCount="1" groupBox="0" visibilityExpressionEnabled="0" name="Pflege" visibilityExpression="">
      <attributeEditorField showLabel="1" name="erhaltungszustand" index="22"/>
      <attributeEditorField showLabel="1" name="gefahr_historisch" index="57"/>
      <attributeEditorField showLabel="1" name="pflege_rueckstand" index="16"/>
      <attributeEditorField showLabel="1" name="pflege_bedarf" index="15"/>
      <attributeEditorField showLabel="1" name="pflege" index="17"/>
      <attributeEditorField showLabel="1" name="pflege_entwicklung" index="14"/>
      <attributeEditorField showLabel="1" name="pflege_zustand" index="59"/>
      <attributeEditorField showLabel="1" name="schutzstatus" index="60"/>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" columnCount="1" groupBox="0" visibilityExpressionEnabled="0" name="Geometrie" visibilityExpression="">
      <attributeEditorField showLabel="1" name="flaeche" index="2"/>
      <attributeEditorField showLabel="1" name="umfang" index="3"/>
      <attributeEditorField showLabel="1" name="num_geom" index="4"/>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" columnCount="1" groupBox="0" visibilityExpressionEnabled="0" name="Störungen" visibilityExpression="">
      <attributeEditorField showLabel="1" name="stoerungen" index="55"/>
    </attributeEditorContainer>
    <attributeEditorContainer showLabel="1" columnCount="1" groupBox="0" visibilityExpressionEnabled="0" name="Beeinträchtigungen" visibilityExpression="">
      <attributeEditorField showLabel="1" name="beeintraechtigung_ids" index="56"/>
    </attributeEditorContainer>
  </attributeEditorForm>
  <editable>
    <field editable="1" name="aenderungen"/>
    <field editable="1" name="angrenzendebereiche"/>
    <field editable="1" name="arten"/>
    <field editable="1" name="ausbildung"/>
    <field editable="1" name="bearbeitung"/>
    <field editable="1" name="bearbeitung_bemerkung"/>
    <field editable="1" name="bearbeitung_wann"/>
    <field editable="1" name="bearbeitung_wer"/>
    <field editable="1" name="beeintraechtigung_ids"/>
    <field editable="1" name="bekanntmachung"/>
    <field editable="1" name="bekanntmachung_bemerkung"/>
    <field editable="1" name="bekanntmachung_wann"/>
    <field editable="1" name="bekanntmachung_wer"/>
    <field editable="1" name="beschreibung"/>
    <field editable="1" name="biotopkuerzel"/>
    <field editable="1" name="biotoptyp2_art_nr"/>
    <field editable="1" name="biotoptyp_art_nr"/>
    <field editable="1" name="bt_code"/>
    <field editable="1" name="eigentumsartnr"/>
    <field editable="1" name="erfassung"/>
    <field editable="1" name="erfassung_bemerkung"/>
    <field editable="1" name="erfassung_wann"/>
    <field editable="1" name="erfassung_wer"/>
    <field editable="1" name="erhaltungszustand"/>
    <field editable="0" name="erhaltungszustand_orig"/>
    <field editable="1" name="fanr"/>
    <field editable="1" name="flaeche"/>
    <field editable="0" name="gefahr_historisch"/>
    <field editable="1" name="gefahrlevel"/>
    <field editable="1" name="geprueft"/>
    <field editable="0" name="identity"/>
    <field editable="1" name="imreviernr"/>
    <field editable="1" name="loeschung"/>
    <field editable="1" name="loeschung_bemerkung"/>
    <field editable="1" name="loeschung_wann"/>
    <field editable="1" name="loeschung_wer"/>
    <field editable="1" name="name"/>
    <field editable="1" name="naturraumflussauennr"/>
    <field editable="1" name="naturraumnr"/>
    <field editable="0" name="num_geom"/>
    <field editable="1" name="objnr"/>
    <field editable="1" name="objnr_landkreise"/>
    <field editable="0" name="objnr_sbk"/>
    <field editable="0" name="ogc_fid"/>
    <field editable="0" name="pflanzen"/>
    <field editable="1" name="pflege"/>
    <field editable="1" name="pflege_bedarf"/>
    <field editable="1" name="pflege_entwicklung"/>
    <field editable="1" name="pflege_rueckstand"/>
    <field editable="1" name="pflege_zustand"/>
    <field editable="1" name="pflege_zustand_orig"/>
    <field editable="0" name="pilze"/>
    <field editable="1" name="reviernr"/>
    <field editable="1" name="schutzstatus"/>
    <field editable="0" name="schutzstatus_orig"/>
    <field editable="1" name="status"/>
    <field editable="0" name="stoerungen"/>
    <field editable="0" name="tiere"/>
    <field editable="1" name="tk25"/>
    <field editable="1" name="umfang"/>
    <field editable="1" name="unr"/>
    <field editable="1" name="waldbiotop"/>
    <field editable="1" name="wert"/>
    <field editable="1" name="werterhaltend"/>
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
    <field name="stoerungen" labelOnTop="0"/>
    <field name="tiere" labelOnTop="0"/>
    <field name="tk25" labelOnTop="0"/>
    <field name="umfang" labelOnTop="1"/>
    <field name="unr" labelOnTop="0"/>
    <field name="waldbiotop" labelOnTop="0"/>
    <field name="wert" labelOnTop="0"/>
    <field name="werterhaltend" labelOnTop="0"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"ogc_fid"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
