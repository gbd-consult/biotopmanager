<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyMaxScale="1" maxScale="0" minScale="100000000" simplifyAlgorithm="0" styleCategories="AllStyleCategories" hasScaleBasedVisibilityFlag="0" simplifyDrawingHints="1" readOnly="0" version="3.16.8-Hannover" simplifyLocal="1" simplifyDrawingTol="1" labelsEnabled="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <temporal startField="" endField="" durationUnit="min" mode="0" fixedDuration="0" endExpression="" durationField="" startExpression="" accumulate="0" enabled="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 symbollevels="0" forceraster="0" enableorderby="1" type="singleSymbol">
    <symbols>
      <symbol name="0" force_rhr="0" clip_to_extent="1" alpha="1" type="fill">
        <layer class="LinePatternFill" pass="0" locked="0" enabled="1">
          <prop v="45" k="angle"/>
          <prop v="55,126,184,255" k="color"/>
          <prop v="2" k="distance"/>
          <prop v="3x:0,0,0,0,0,0" k="distance_map_unit_scale"/>
          <prop v="MM" k="distance_unit"/>
          <prop v="0.26" k="line_width"/>
          <prop v="3x:0,0,0,0,0,0" k="line_width_map_unit_scale"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol name="@0@0" force_rhr="0" clip_to_extent="1" alpha="1" type="line">
            <layer class="SimpleLine" pass="0" locked="0" enabled="1">
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
              <prop v="0,0,0,255" k="line_color"/>
              <prop v="solid" k="line_style"/>
              <prop v="0.3" k="line_width"/>
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
        </layer>
        <layer class="SimpleFill" pass="0" locked="0" enabled="1">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="0,0,0,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0,0,0,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.46" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="no" k="style"/>
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
      <text-style fontFamily="Noto Sans" fontSize="10" isExpression="0" textOpacity="1" fieldName="biotoptyp2_art_nr" fontKerning="1" multilineHeight="1" textOrientation="horizontal" fontSizeUnit="Point" previewBkgrdColor="255,255,255,255" namedStyle="" fontStrikeout="0" fontItalic="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontWeight="50" allowHtml="0" useSubstitutions="0" fontLetterSpacing="0" capitalization="0" fontWordSpacing="0" textColor="0,0,0,255" fontUnderline="0" blendMode="0">
        <text-buffer bufferNoFill="1" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferBlendMode="0" bufferColor="255,255,255,255" bufferDraw="0" bufferSizeUnits="MM" bufferJoinStyle="128"/>
        <text-mask maskedSymbolLayers="" maskSizeUnits="MM" maskSize="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskOpacity="1" maskType="0" maskEnabled="0"/>
        <background shapeSVGFile="" shapeOffsetY="0" shapeSizeY="0" shapeOpacity="1" shapeFillColor="255,255,255,255" shapeBlendMode="0" shapeType="0" shapeRotationType="0" shapeSizeUnit="MM" shapeRadiiUnit="MM" shapeOffsetUnit="MM" shapeSizeType="0" shapeJoinStyle="64" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeOffsetX="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiX="0" shapeDraw="0" shapeSizeX="0" shapeBorderColor="128,128,128,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRotation="0" shapeRadiiY="0" shapeBorderWidthUnit="MM">
          <symbol name="markerSymbol" force_rhr="0" clip_to_extent="1" alpha="1" type="marker">
            <layer class="SimpleMarker" pass="0" locked="0" enabled="1">
              <prop v="0" k="angle"/>
              <prop v="190,207,80,255" k="color"/>
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
        <shadow shadowUnder="0" shadowOffsetGlobal="1" shadowRadiusUnit="MM" shadowScale="100" shadowColor="0,0,0,255" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowOffsetAngle="135" shadowRadius="1.5" shadowDraw="0" shadowOpacity="0.7" shadowBlendMode="6" shadowOffsetUnit="MM"/>
        <dd_properties>
          <Option type="Map">
            <Option name="name" value="" type="QString"/>
            <Option name="properties"/>
            <Option name="type" value="collection" type="QString"/>
          </Option>
        </dd_properties>
        <substitutions/>
      </text-style>
      <text-format useMaxLineLengthForAutoWrap="1" placeDirectionSymbol="0" wrapChar="" leftDirectionSymbol="&lt;" decimals="3" rightDirectionSymbol=">" reverseDirectionSymbol="0" formatNumbers="0" autoWrapLength="0" multilineAlign="0" addDirectionSymbol="0" plussign="0"/>
      <placement placementFlags="10" priority="5" repeatDistance="0" offsetType="0" overrunDistance="0" fitInPolygonOnly="0" geometryGeneratorEnabled="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" lineAnchorType="0" layerType="PolygonGeometry" quadOffset="4" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" maxCurvedCharAngleIn="25" repeatDistanceUnits="MM" polygonPlacementFlags="2" offsetUnits="MM" xOffset="0" preserveRotation="1" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorType="PointGeometry" placement="0" maxCurvedCharAngleOut="-25" geometryGenerator="" yOffset="0" centroidInside="0" lineAnchorPercent="0.5" dist="0" centroidWhole="0" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" rotationAngle="0" distMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM"/>
      <rendering fontLimitPixelSize="0" maxNumLabels="2000" mergeLines="0" minFeatureSize="0" fontMinPixelSize="3" drawLabels="1" scaleMin="0" obstacleFactor="1" obstacle="1" upsidedownLabels="0" displayAll="0" scaleMax="10000" labelPerPart="0" zIndex="0" scaleVisibility="1" obstacleType="0" fontMaxPixelSize="10000" limitNumLabels="0"/>
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
          <Option name="lineSymbol" value="&lt;symbol name=&quot;symbol&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; alpha=&quot;1&quot; type=&quot;line&quot;>&lt;layer class=&quot;SimpleLine&quot; pass=&quot;0&quot; locked=&quot;0&quot; enabled=&quot;1&quot;>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option name=&quot;name&quot; value=&quot;&quot; type=&quot;QString&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option name=&quot;type&quot; value=&quot;collection&quot; type=&quot;QString&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString"/>
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
    <property key="dualview/previewExpressions" value="ogc_fid"/>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Pie" attributeLegend="1">
    <DiagramCategory lineSizeScale="3x:0,0,0,0,0,0" scaleDependency="Area" direction="1" spacingUnit="MM" penWidth="0" maxScaleDenominator="1e+08" showAxis="0" sizeType="MM" lineSizeType="MM" width="15" penColor="#000000" rotationOffset="270" labelPlacementMethod="XHeight" scaleBasedVisibility="0" minScaleDenominator="0" opacity="1" minimumSize="0" spacing="0" penAlpha="255" enabled="0" height="15" backgroundColor="#ffffff" sizeScale="3x:0,0,0,0,0,0" barWidth="5" diagramOrientation="Up" backgroundAlpha="255" spacingUnitScale="3x:0,0,0,0,0,0">
      <fontProperties style="Regular" description="Noto Sans,10,-1,0,50,0,0,0,0,0,Regular"/>
      <attribute label="flaeche" color="#6830e8" field="&quot;flaeche&quot;"/>
      <axisSymbol>
        <symbol name="" force_rhr="0" clip_to_extent="1" alpha="1" type="line">
          <layer class="SimpleLine" pass="0" locked="0" enabled="1">
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
  <DiagramLayerSettings dist="0" priority="0" obstacle="0" linePlacementFlags="18" showAll="1" zIndex="0" placement="1">
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
          <Option type="Map">
            <Option name="IsMultiline" value="false" type="bool"/>
            <Option name="UseHtml" value="false" type="bool"/>
          </Option>
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
            <Option name="Layer" value="massnahmen_fd150df9_394d_401d_a119_6623ca23847f" type="QString"/>
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
            <Option name="AllowNull" value="false" type="bool"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="erhaltungszustand_50c50dd4_53a3_4c80_a54c_17bb9ececf1f" type="QString"/>
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
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="id_biot_alt" type="QString"/>
            <Option name="Layer" value="biotoptypen_b0df8112_fc36_4f57_a48a_5a675fa2c419" type="QString"/>
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
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Description" value="" type="QString"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="nummer" type="QString"/>
            <Option name="Layer" value="biotoptypen_b0df8112_fc36_4f57_a48a_5a675fa2c419" type="QString"/>
            <Option name="LayerName" value="biotoptypen" type="QString"/>
            <Option name="LayerProviderName" value="postgres" type="QString"/>
            <Option name="LayerSource" value="dbname='biotope' host=localhost port=5432 user='biotope_admin' key='id' checkPrimaryKeyUnicity='1' table=&quot;referenzen&quot;.&quot;biotoptypen&quot;" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="true" type="bool"/>
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
            <Option name="AllowNull" value="false" type="bool"/>
            <Option name="Description" value="" type="QString"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="kartierer" type="QString"/>
            <Option name="Layer" value="kartierer_8610d512_cff7_4b13_9c10_f006460186eb" type="QString"/>
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
            <Option name="Layer" value="kartierer_8610d512_cff7_4b13_9c10_f006460186eb" type="QString"/>
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
            <Option name="Layer" value="kartierer_8610d512_cff7_4b13_9c10_f006460186eb" type="QString"/>
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
            <Option name="Layer" value="kartierer_8610d512_cff7_4b13_9c10_f006460186eb" type="QString"/>
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
            <Option name="Layer" value="beeintraechtigungen_65b7892d_5ae8_4305_9612_d5226a3c4076" type="QString"/>
            <Option name="LayerName" value="beeintraechtigungen" type="QString"/>
            <Option name="LayerProviderName" value="postgres" type="QString"/>
            <Option name="LayerSource" value="dbname='biotope' host=localhost port=5432 user='biotope_admin' key='id' checkPrimaryKeyUnicity='1' table=&quot;referenzen&quot;.&quot;beeintraechtigungen&quot;" type="QString"/>
            <Option name="NofColumns" value="3" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="true" type="bool"/>
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
            <Option name="Layer" value="aenderungen_9d175fd5_937b_4cb4_8c66_75a06f8a3008" type="QString"/>
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
                <Option name="Keine Angabe" value="{2839923C-8B7D-419E-B84B-CA2FE9B80EC7}" type="QString"/>
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
            <Option name="AllowNull" value="false" type="bool"/>
            <Option name="FilterExpression" value="" type="QString"/>
            <Option name="Key" value="id" type="QString"/>
            <Option name="Layer" value="schutzstatus_98b60599_1ada_4d90_98bc_ab5b3ab84ef5" type="QString"/>
            <Option name="NofColumns" value="1" type="int"/>
            <Option name="OrderByValue" value="false" type="bool"/>
            <Option name="UseCompleter" value="false" type="bool"/>
            <Option name="Value" value="wert" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
    <field name="pflege_zustand_code" configurationFlags="None">
      <editWidget type="Range">
        <config>
          <Option type="Map">
            <Option name="AllowNull" value="true" type="bool"/>
            <Option name="Max" value="2147483647" type="int"/>
            <Option name="Min" value="-2147483648" type="int"/>
            <Option name="Precision" value="0" type="int"/>
            <Option name="Step" value="1" type="int"/>
            <Option name="Style" value="SpinBox" type="QString"/>
          </Option>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" name="" field="ogc_fid"/>
    <alias index="1" name="" field="identity"/>
    <alias index="2" name="Fläche" field="flaeche"/>
    <alias index="3" name="Umfang" field="umfang"/>
    <alias index="4" name="Anzahl Geometrien" field="num_geom"/>
    <alias index="5" name="Biotopnummer LID" field="objnr"/>
    <alias index="6" name="" field="objnr_sbk"/>
    <alias index="7" name="" field="objnr_landkreise"/>
    <alias index="8" name="TK 25" field="tk25"/>
    <alias index="9" name="" field="unr"/>
    <alias index="10" name="Beschreibung" field="beschreibung"/>
    <alias index="11" name="" field="angrenzendebereiche"/>
    <alias index="12" name="Ausbildung" field="ausbildung"/>
    <alias index="13" name="" field="pflege_zustand_orig"/>
    <alias index="14" name="Hinweise zur Pflege" field="pflege_entwicklung"/>
    <alias index="15" name="Pflegebedarf" field="pflege_bedarf"/>
    <alias index="16" name="" field="pflege_rueckstand"/>
    <alias index="17" name="" field="pflege"/>
    <alias index="18" name="" field="bt_code"/>
    <alias index="19" name="Wertbestimmend" field="wert"/>
    <alias index="20" name="" field="schutzstatus_orig"/>
    <alias index="21" name="Biotopkürzel" field="biotopkuerzel"/>
    <alias index="22" name="Erhaltungszustand" field="erhaltungszustand"/>
    <alias index="23" name="" field="erfassung"/>
    <alias index="24" name="" field="bearbeitung"/>
    <alias index="25" name="" field="loeschung"/>
    <alias index="26" name="" field="bekanntmachung"/>
    <alias index="27" name="Geprüft" field="geprueft"/>
    <alias index="28" name="Biotoptyp alt" field="biotoptyp_art_nr"/>
    <alias index="29" name="Biotoptyp" field="biotoptyp2_art_nr"/>
    <alias index="30" name="" field="naturraumnr"/>
    <alias index="31" name="" field="naturraumflussauennr"/>
    <alias index="32" name="" field="fanr"/>
    <alias index="33" name="" field="reviernr"/>
    <alias index="34" name="" field="imreviernr"/>
    <alias index="35" name="" field="eigentumsartnr"/>
    <alias index="36" name="Waldbiotop" field="waldbiotop"/>
    <alias index="37" name="Name des Biotops" field="name"/>
    <alias index="38" name="Status" field="status"/>
    <alias index="39" name="Kartierungsdatum" field="erfassung_wann"/>
    <alias index="40" name="Kartierer" field="erfassung_wer"/>
    <alias index="41" name="Herkunft Daten" field="erfassung_bemerkung"/>
    <alias index="42" name="Datum der Bearbeitung" field="bearbeitung_wann"/>
    <alias index="43" name="Bearbeiter" field="bearbeitung_wer"/>
    <alias index="44" name="Datenstand Bearbeitung" field="bearbeitung_bemerkung"/>
    <alias index="45" name="Datum der Archivierung" field="loeschung_wann"/>
    <alias index="46" name="archiviert von" field="loeschung_wer"/>
    <alias index="47" name="Grund der Archivierung" field="loeschung_bemerkung"/>
    <alias index="48" name="Bekanntmachungsdatum" field="bekanntmachung_wann"/>
    <alias index="49" name="Bearbeiter" field="bekanntmachung_wer"/>
    <alias index="50" name="Bemerkungen zur Bekanntmachung" field="bekanntmachung_bemerkung"/>
    <alias index="51" name="Beeinträchtigungen" field="beeintraechtigung_ids"/>
    <alias index="52" name="" field="aenderungen"/>
    <alias index="53" name="" field="wertbestimmend"/>
    <alias index="54" name="" field="stoer_gefahrlvl_gefahrhist"/>
    <alias index="55" name="Pflege Zustand" field="pflege_zustand"/>
    <alias index="56" name="Schutzstatus" field="schutzstatus"/>
    <alias index="57" name="" field="pflege_zustand_code"/>
  </aliases>
  <defaults>
    <default applyOnUpdate="0" field="ogc_fid" expression=""/>
    <default applyOnUpdate="0" field="identity" expression=""/>
    <default applyOnUpdate="0" field="flaeche" expression=" $area "/>
    <default applyOnUpdate="0" field="umfang" expression=" $perimeter "/>
    <default applyOnUpdate="0" field="num_geom" expression=""/>
    <default applyOnUpdate="0" field="objnr" expression="&quot;nextval_objnr()&quot;"/>
    <default applyOnUpdate="0" field="objnr_sbk" expression=""/>
    <default applyOnUpdate="0" field="objnr_landkreise" expression=""/>
    <default applyOnUpdate="0" field="tk25" expression=""/>
    <default applyOnUpdate="0" field="unr" expression=""/>
    <default applyOnUpdate="0" field="beschreibung" expression=""/>
    <default applyOnUpdate="0" field="angrenzendebereiche" expression=""/>
    <default applyOnUpdate="0" field="ausbildung" expression=""/>
    <default applyOnUpdate="0" field="pflege_zustand_orig" expression=""/>
    <default applyOnUpdate="0" field="pflege_entwicklung" expression=""/>
    <default applyOnUpdate="0" field="pflege_bedarf" expression=""/>
    <default applyOnUpdate="0" field="pflege_rueckstand" expression=""/>
    <default applyOnUpdate="0" field="pflege" expression=""/>
    <default applyOnUpdate="0" field="bt_code" expression=""/>
    <default applyOnUpdate="0" field="wert" expression=""/>
    <default applyOnUpdate="0" field="schutzstatus_orig" expression=""/>
    <default applyOnUpdate="0" field="biotopkuerzel" expression=""/>
    <default applyOnUpdate="0" field="erhaltungszustand" expression=""/>
    <default applyOnUpdate="0" field="erfassung" expression=""/>
    <default applyOnUpdate="0" field="bearbeitung" expression=""/>
    <default applyOnUpdate="0" field="loeschung" expression=""/>
    <default applyOnUpdate="0" field="bekanntmachung" expression=""/>
    <default applyOnUpdate="0" field="geprueft" expression=""/>
    <default applyOnUpdate="0" field="biotoptyp_art_nr" expression=""/>
    <default applyOnUpdate="0" field="biotoptyp2_art_nr" expression=""/>
    <default applyOnUpdate="0" field="naturraumnr" expression=""/>
    <default applyOnUpdate="0" field="naturraumflussauennr" expression=""/>
    <default applyOnUpdate="0" field="fanr" expression=""/>
    <default applyOnUpdate="0" field="reviernr" expression=""/>
    <default applyOnUpdate="0" field="imreviernr" expression=""/>
    <default applyOnUpdate="0" field="eigentumsartnr" expression=""/>
    <default applyOnUpdate="0" field="waldbiotop" expression=""/>
    <default applyOnUpdate="0" field="name" expression=""/>
    <default applyOnUpdate="0" field="status" expression=""/>
    <default applyOnUpdate="0" field="erfassung_wann" expression=" now() "/>
    <default applyOnUpdate="0" field="erfassung_wer" expression="CURRENT_USER"/>
    <default applyOnUpdate="0" field="erfassung_bemerkung" expression=""/>
    <default applyOnUpdate="0" field="bearbeitung_wann" expression=""/>
    <default applyOnUpdate="0" field="bearbeitung_wer" expression=""/>
    <default applyOnUpdate="0" field="bearbeitung_bemerkung" expression=""/>
    <default applyOnUpdate="0" field="loeschung_wann" expression=""/>
    <default applyOnUpdate="0" field="loeschung_wer" expression=""/>
    <default applyOnUpdate="0" field="loeschung_bemerkung" expression=""/>
    <default applyOnUpdate="0" field="bekanntmachung_wann" expression=""/>
    <default applyOnUpdate="0" field="bekanntmachung_wer" expression=""/>
    <default applyOnUpdate="0" field="bekanntmachung_bemerkung" expression=""/>
    <default applyOnUpdate="0" field="beeintraechtigung_ids" expression=""/>
    <default applyOnUpdate="0" field="aenderungen" expression=""/>
    <default applyOnUpdate="0" field="wertbestimmend" expression=""/>
    <default applyOnUpdate="0" field="stoer_gefahrlvl_gefahrhist" expression="'__'"/>
    <default applyOnUpdate="0" field="pflege_zustand" expression=""/>
    <default applyOnUpdate="0" field="schutzstatus" expression=""/>
    <default applyOnUpdate="0" field="pflege_zustand_code" expression=""/>
  </defaults>
  <constraints>
    <constraint exp_strength="0" notnull_strength="1" unique_strength="1" constraints="3" field="ogc_fid"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="identity"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="flaeche"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="umfang"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="num_geom"/>
    <constraint exp_strength="1" notnull_strength="1" unique_strength="2" constraints="7" field="objnr"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="objnr_sbk"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="objnr_landkreise"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="tk25"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="unr"/>
    <constraint exp_strength="0" notnull_strength="1" unique_strength="0" constraints="1" field="beschreibung"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="angrenzendebereiche"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="ausbildung"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="pflege_zustand_orig"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="pflege_entwicklung"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="pflege_bedarf"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="pflege_rueckstand"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="pflege"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="bt_code"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="wert"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="schutzstatus_orig"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="biotopkuerzel"/>
    <constraint exp_strength="0" notnull_strength="1" unique_strength="0" constraints="1" field="erhaltungszustand"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="erfassung"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="bearbeitung"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="loeschung"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="bekanntmachung"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="geprueft"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="biotoptyp_art_nr"/>
    <constraint exp_strength="0" notnull_strength="1" unique_strength="0" constraints="1" field="biotoptyp2_art_nr"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="naturraumnr"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="naturraumflussauennr"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="fanr"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="reviernr"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="imreviernr"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="eigentumsartnr"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="waldbiotop"/>
    <constraint exp_strength="0" notnull_strength="1" unique_strength="0" constraints="1" field="name"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="status"/>
    <constraint exp_strength="2" notnull_strength="1" unique_strength="0" constraints="5" field="erfassung_wann"/>
    <constraint exp_strength="0" notnull_strength="1" unique_strength="0" constraints="1" field="erfassung_wer"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="erfassung_bemerkung"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="bearbeitung_wann"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="bearbeitung_wer"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="bearbeitung_bemerkung"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="loeschung_wann"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="loeschung_wer"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="loeschung_bemerkung"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="bekanntmachung_wann"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="bekanntmachung_wer"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="bekanntmachung_bemerkung"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="beeintraechtigung_ids"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="aenderungen"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="wertbestimmend"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="stoer_gefahrlvl_gefahrhist"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="pflege_zustand"/>
    <constraint exp_strength="0" notnull_strength="1" unique_strength="0" constraints="1" field="schutzstatus"/>
    <constraint exp_strength="0" notnull_strength="0" unique_strength="0" constraints="0" field="pflege_zustand_code"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" exp="" field="ogc_fid"/>
    <constraint desc="" exp="" field="identity"/>
    <constraint desc="" exp="" field="flaeche"/>
    <constraint desc="" exp="" field="umfang"/>
    <constraint desc="" exp="" field="num_geom"/>
    <constraint desc="Der Anfangswert muss mit 14522- anfangen" exp="(regexp_match( objnr, '14522-*') AND  length(objnr) > 9) OR objnr ='nextval_objnr()'" field="objnr"/>
    <constraint desc="" exp="" field="objnr_sbk"/>
    <constraint desc="" exp="" field="objnr_landkreise"/>
    <constraint desc="" exp="" field="tk25"/>
    <constraint desc="" exp="" field="unr"/>
    <constraint desc="" exp="" field="beschreibung"/>
    <constraint desc="" exp="" field="angrenzendebereiche"/>
    <constraint desc="" exp="" field="ausbildung"/>
    <constraint desc="" exp="" field="pflege_zustand_orig"/>
    <constraint desc="" exp="" field="pflege_entwicklung"/>
    <constraint desc="" exp="" field="pflege_bedarf"/>
    <constraint desc="" exp="" field="pflege_rueckstand"/>
    <constraint desc="" exp="" field="pflege"/>
    <constraint desc="" exp="" field="bt_code"/>
    <constraint desc="" exp="" field="wert"/>
    <constraint desc="" exp="" field="schutzstatus_orig"/>
    <constraint desc="" exp="" field="biotopkuerzel"/>
    <constraint desc="" exp="" field="erhaltungszustand"/>
    <constraint desc="" exp="" field="erfassung"/>
    <constraint desc="" exp="" field="bearbeitung"/>
    <constraint desc="" exp="" field="loeschung"/>
    <constraint desc="" exp="" field="bekanntmachung"/>
    <constraint desc="" exp="" field="geprueft"/>
    <constraint desc="" exp="" field="biotoptyp_art_nr"/>
    <constraint desc="" exp="" field="biotoptyp2_art_nr"/>
    <constraint desc="" exp="" field="naturraumnr"/>
    <constraint desc="" exp="" field="naturraumflussauennr"/>
    <constraint desc="" exp="" field="fanr"/>
    <constraint desc="" exp="" field="reviernr"/>
    <constraint desc="" exp="" field="imreviernr"/>
    <constraint desc="" exp="" field="eigentumsartnr"/>
    <constraint desc="" exp="" field="waldbiotop"/>
    <constraint desc="" exp="" field="name"/>
    <constraint desc="" exp="" field="status"/>
    <constraint desc="" exp="&quot;identity&quot;" field="erfassung_wann"/>
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
    <constraint desc="" exp="" field="beeintraechtigung_ids"/>
    <constraint desc="" exp="" field="aenderungen"/>
    <constraint desc="" exp="" field="wertbestimmend"/>
    <constraint desc="" exp="" field="stoer_gefahrlvl_gefahrhist"/>
    <constraint desc="" exp="" field="pflege_zustand"/>
    <constraint desc="" exp="" field="schutzstatus"/>
    <constraint desc="" exp="" field="pflege_zustand_code"/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortOrder="1" sortExpression="&quot;pflege&quot;">
    <columns>
      <column name="ogc_fid" width="-1" hidden="0" type="field"/>
      <column name="identity" width="-1" hidden="0" type="field"/>
      <column name="objnr_sbk" width="-1" hidden="0" type="field"/>
      <column name="unr" width="-1" hidden="0" type="field"/>
      <column name="ausbildung" width="-1" hidden="0" type="field"/>
      <column name="pflege_zustand" width="-1" hidden="0" type="field"/>
      <column name="pflege_entwicklung" width="-1" hidden="0" type="field"/>
      <column name="pflege_bedarf" width="-1" hidden="0" type="field"/>
      <column name="pflege_rueckstand" width="-1" hidden="0" type="field"/>
      <column name="pflege" width="483" hidden="0" type="field"/>
      <column name="bt_code" width="-1" hidden="0" type="field"/>
      <column name="wert" width="-1" hidden="0" type="field"/>
      <column name="schutzstatus" width="-1" hidden="0" type="field"/>
      <column name="biotopkuerzel" width="-1" hidden="0" type="field"/>
      <column name="erhaltungszustand" width="-1" hidden="0" type="field"/>
      <column name="geprueft" width="-1" hidden="0" type="field"/>
      <column name="biotoptyp_art_nr" width="-1" hidden="0" type="field"/>
      <column name="biotoptyp2_art_nr" width="-1" hidden="0" type="field"/>
      <column name="waldbiotop" width="-1" hidden="0" type="field"/>
      <column name="objnr_landkreise" width="-1" hidden="0" type="field"/>
      <column name="tk25" width="-1" hidden="0" type="field"/>
      <column name="name" width="-1" hidden="0" type="field"/>
      <column name="status" width="-1" hidden="0" type="field"/>
      <column name="flaeche" width="-1" hidden="0" type="field"/>
      <column name="num_geom" width="-1" hidden="0" type="field"/>
      <column name="objnr" width="-1" hidden="0" type="field"/>
      <column name="umfang" width="-1" hidden="0" type="field"/>
      <column name="beschreibung" width="-1" hidden="0" type="field"/>
      <column name="erfassung_wann" width="-1" hidden="0" type="field"/>
      <column name="erfassung_wer" width="-1" hidden="0" type="field"/>
      <column name="erfassung_bemerkung" width="-1" hidden="0" type="field"/>
      <column name="bearbeitung_wann" width="-1" hidden="0" type="field"/>
      <column name="bearbeitung_wer" width="-1" hidden="0" type="field"/>
      <column name="bearbeitung_bemerkung" width="-1" hidden="0" type="field"/>
      <column name="loeschung_wann" width="-1" hidden="0" type="field"/>
      <column name="loeschung_wer" width="-1" hidden="0" type="field"/>
      <column name="loeschung_bemerkung" width="-1" hidden="0" type="field"/>
      <column name="bekanntmachung_wann" width="249" hidden="0" type="field"/>
      <column name="bekanntmachung_wer" width="-1" hidden="0" type="field"/>
      <column name="bekanntmachung_bemerkung" width="-1" hidden="0" type="field"/>
      <column name="beeintraechtigung_ids" width="-1" hidden="0" type="field"/>
      <column width="-1" hidden="1" type="actions"/>
      <column name="schutzstatus_orig" width="-1" hidden="0" type="field"/>
      <column name="pflege_zustand_orig" width="-1" hidden="0" type="field"/>
      <column name="aenderungen" width="-1" hidden="0" type="field"/>
      <column name="angrenzendebereiche" width="-1" hidden="0" type="field"/>
      <column name="erfassung" width="-1" hidden="0" type="field"/>
      <column name="bearbeitung" width="-1" hidden="0" type="field"/>
      <column name="loeschung" width="-1" hidden="0" type="field"/>
      <column name="bekanntmachung" width="-1" hidden="0" type="field"/>
      <column name="naturraumnr" width="-1" hidden="0" type="field"/>
      <column name="naturraumflussauennr" width="-1" hidden="0" type="field"/>
      <column name="fanr" width="-1" hidden="0" type="field"/>
      <column name="reviernr" width="-1" hidden="0" type="field"/>
      <column name="imreviernr" width="-1" hidden="0" type="field"/>
      <column name="eigentumsartnr" width="-1" hidden="0" type="field"/>
      <column name="pflege_zustand_code" width="-1" hidden="0" type="field"/>
      <column name="wertbestimmend" width="-1" hidden="0" type="field"/>
      <column name="stoer_gefahrlvl_gefahrhist" width="-1" hidden="0" type="field"/>
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
    <attributeEditorField name="name" index="37" showLabel="1"/>
    <attributeEditorField name="ausbildung" index="12" showLabel="1"/>
    <attributeEditorField name="arten" index="-1" showLabel="1"/>
    <attributeEditorField name="werterhaltend" index="-1" showLabel="1"/>
    <attributeEditorField name="waldbiotop" index="36" showLabel="1"/>
    <attributeEditorField name="status" index="38" showLabel="1"/>
    <attributeEditorField name="beschreibung" index="10" showLabel="1"/>
    <attributeEditorField name="geprueft" index="27" showLabel="1"/>
    <attributeEditorContainer name="Basisdaten" visibilityExpression="" columnCount="1" showLabel="1" groupBox="0" visibilityExpressionEnabled="0">
      <attributeEditorField name="biotopkuerzel" index="21" showLabel="1"/>
      <attributeEditorField name="ogc_fid" index="0" showLabel="1"/>
      <attributeEditorField name="identity" index="1" showLabel="1"/>
      <attributeEditorField name="unr" index="9" showLabel="1"/>
      <attributeEditorField name="bt_code" index="18" showLabel="1"/>
      <attributeEditorField name="biotoptyp_art_nr" index="28" showLabel="1"/>
      <attributeEditorField name="biotoptyp2_art_nr" index="29" showLabel="1"/>
      <attributeEditorField name="tk25" index="8" showLabel="1"/>
    </attributeEditorContainer>
    <attributeEditorContainer name="Erfassung und Bearbeitung" visibilityExpression="" columnCount="1" showLabel="1" groupBox="0" visibilityExpressionEnabled="0">
      <attributeEditorContainer name="Erfassung" visibilityExpression="" columnCount="3" showLabel="1" groupBox="1" visibilityExpressionEnabled="0">
        <attributeEditorField name="erfassung_wer" index="40" showLabel="1"/>
        <attributeEditorField name="erfassung_wann" index="39" showLabel="1"/>
        <attributeEditorField name="erfassung_bemerkung" index="41" showLabel="1"/>
        <attributeEditorField name="bekanntmachung_wer" index="49" showLabel="1"/>
        <attributeEditorField name="bekanntmachung_wann" index="48" showLabel="1"/>
        <attributeEditorField name="bekanntmachung_bemerkung" index="50" showLabel="1"/>
      </attributeEditorContainer>
      <attributeEditorContainer name="Bearbeiten" visibilityExpression="" columnCount="3" showLabel="1" groupBox="1" visibilityExpressionEnabled="0">
        <attributeEditorField name="bearbeitung_wer" index="43" showLabel="1"/>
        <attributeEditorField name="bearbeitung_wann" index="42" showLabel="1"/>
        <attributeEditorField name="bearbeitung_bemerkung" index="44" showLabel="1"/>
        <attributeEditorField name="loeschung_wer" index="46" showLabel="1"/>
        <attributeEditorField name="loeschung_wann" index="45" showLabel="1"/>
        <attributeEditorField name="loeschung_bemerkung" index="47" showLabel="1"/>
      </attributeEditorContainer>
    </attributeEditorContainer>
    <attributeEditorContainer name="Pflege" visibilityExpression="" columnCount="1" showLabel="1" groupBox="0" visibilityExpressionEnabled="0">
      <attributeEditorField name="erhaltungszustand" index="22" showLabel="1"/>
      <attributeEditorField name="gefahr_historisch" index="-1" showLabel="1"/>
      <attributeEditorField name="pflege_rueckstand" index="16" showLabel="1"/>
      <attributeEditorField name="pflege_bedarf" index="15" showLabel="1"/>
      <attributeEditorField name="pflege" index="17" showLabel="1"/>
      <attributeEditorField name="pflege_entwicklung" index="14" showLabel="1"/>
      <attributeEditorField name="pflege_zustand" index="55" showLabel="1"/>
      <attributeEditorField name="schutzstatus" index="56" showLabel="1"/>
    </attributeEditorContainer>
    <attributeEditorContainer name="Geometrie" visibilityExpression="" columnCount="1" showLabel="1" groupBox="0" visibilityExpressionEnabled="0">
      <attributeEditorField name="flaeche" index="2" showLabel="1"/>
      <attributeEditorField name="umfang" index="3" showLabel="1"/>
      <attributeEditorField name="num_geom" index="4" showLabel="1"/>
    </attributeEditorContainer>
    <attributeEditorContainer name="Störungen" visibilityExpression="" columnCount="1" showLabel="1" groupBox="0" visibilityExpressionEnabled="0">
      <attributeEditorField name="stoerungen" index="-1" showLabel="1"/>
    </attributeEditorContainer>
    <attributeEditorContainer name="Beeinträchtigungen" visibilityExpression="" columnCount="1" showLabel="1" groupBox="0" visibilityExpressionEnabled="0">
      <attributeEditorField name="beeintraechtigung_ids" index="51" showLabel="1"/>
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
    <field name="biotopkuerzel" editable="0"/>
    <field name="biotoptyp2_art_nr" editable="1"/>
    <field name="biotoptyp_art_nr" editable="0"/>
    <field name="bt_code" editable="0"/>
    <field name="eigentumsartnr" editable="1"/>
    <field name="erfassung" editable="1"/>
    <field name="erfassung_bemerkung" editable="1"/>
    <field name="erfassung_wann" editable="1"/>
    <field name="erfassung_wer" editable="1"/>
    <field name="erhaltungszustand" editable="1"/>
    <field name="erhaltungszustand_orig" editable="1"/>
    <field name="fanr" editable="1"/>
    <field name="flaeche" editable="1"/>
    <field name="gefahr_historisch" editable="0"/>
    <field name="gefahrlevel" editable="1"/>
    <field name="geprueft" editable="1"/>
    <field name="identity" editable="0"/>
    <field name="imreviernr" editable="1"/>
    <field name="loeschung" editable="1"/>
    <field name="loeschung_bemerkung" editable="0"/>
    <field name="loeschung_wann" editable="0"/>
    <field name="loeschung_wer" editable="0"/>
    <field name="name" editable="1"/>
    <field name="naturraumflussauennr" editable="1"/>
    <field name="naturraumnr" editable="1"/>
    <field name="num_geom" editable="0"/>
    <field name="objnr" editable="0"/>
    <field name="objnr_landkreise" editable="1"/>
    <field name="objnr_sbk" editable="0"/>
    <field name="ogc_fid" editable="0"/>
    <field name="pflanzen" editable="0"/>
    <field name="pflege" editable="1"/>
    <field name="pflege_bedarf" editable="1"/>
    <field name="pflege_entwicklung" editable="1"/>
    <field name="pflege_rueckstand" editable="0"/>
    <field name="pflege_zustand" editable="1"/>
    <field name="pflege_zustand_code" editable="1"/>
    <field name="pflege_zustand_orig" editable="1"/>
    <field name="pilze" editable="0"/>
    <field name="reviernr" editable="1"/>
    <field name="schutzstatus" editable="1"/>
    <field name="schutzstatus_orig" editable="1"/>
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
    <field name="pflege_zustand_code" labelOnTop="0"/>
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
