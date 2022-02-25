Referenzdaten
=============

Die Referenzdaten, die in der aktuellen Umsetzung definiert sind umfassen folgende Informationen:

referenz_aenderungen.csv
------------------------

 .. code-block:: bash

  id;aenderung
  1;Standardmaßnahme
  2;Überführung ohne Anpassung
  3;Überführung mit Anpassung
  4;Detailplanung 
  5;Änderung Schutzgut
  6;Maßnahmekorrektur

referenz_beeintraechtigungen.csv
--------------------------------

 .. code-block:: bash

  id;beeintraechtigungen
  100;Boden, Wasserhaushalt, Stoffhaushalt
  101;Abbau (Sand, Gestein, Torf) / Materialentnahme
  102;Störungen des Oberbodens / der Bodendecke bzw. des Substrates
  103;Veränderungen des Torfkörpers (Sackung, Zersetzung, Mineralisation)
  104;Veränderung der Bodenstruktur / des Bodenaufbaus (z.B. Umbruch)
  105;Verdichtung (Befahrung)
  106;Grundwasserabsenkung
  107;Entwässerung
  108;Gewässerverrohrung / -verlegung / -begradigung/ -verbau / Uferbefestigung
  109;Bespannungsregime
  110;Wasserstandsschwankungen (anthropogen, nicht nutzungsbedingt)
  111;Wasserentnahme
  112;(Grund-) Wasseranstieg durch Stauhaltung /Anstaumaßnahmen
  113;Buhnen, Sohl- / Querbauwerke
  114;Nährstoffmobilisierung im Sediment
  115;Biologische Gewässergüte
  116;chem. / biochem. / therm. Belastung
  117;Nährstoffeintrag (N, P) (Eutrophierung) (einschl. org. Ablagerungen)
  118;Eintrag anderer Stoffe (einschl. Fremdstoffe zur Wegebefestigung)
  119;Müllablagerung (anorganische Stoffe)
  120;Schadstoffeintrag (Öl, PAK, Ruß, Stäube, PSM, Salze)
  121;Versauerung
  200;Störungen an der Vegetationsstruktur
  201;Nutzungsauflassung / Brache
  202;direkte Schädigung von Vegetation
  203;Verbuschung / Gehölzaufwuchs
  204;Vergrasung / Grasfilz
  205;Vitalitätseinbußen
  206;Verbiß
  207;Schäle
  208;Pflegedefizite
  209;LR-untypische Arten / Dominanzen
  210;Neophyten / Neozoen
  211;sonst. Störzeiger (incl. Ruderalisierungszeiger)
  212;Nährstoffzeiger
  213;Versauerungszeiger
  214;Fischbesatz mit lr-untyp. Arten
  216;Entwässerungszeiger (einschl. Verheidungszeiger
  300;Nutzung / Bewirtschaftung
  301;Bewirtschaftungsintensität
  302;Aufforstung
  303;Beweidung
  304;Teichpflege (Strukturen)
  305;Gewässerunterhaltung
  306;Sonstiges
  307;Beschattung
  308;Begängnis, Frequentierung
  309;punktuelle Uferverbauung (Bootsanleger, Stege, Bootshäuser etc.)
  400;Lärm
  500;Zerschneidung
  600;Untere Makrophytengrenze
  700;Sonstige Beeinträchtigung

referenz_biotoptypen.csv
------------------------

 .. code-block:: bash

  id;btyp;nummer;vwv_2012;name_2002;name_2012;code_2002;code_2012;vwv_2002;schutz;id_biot_lfulg_2012;id_biot_alt;biotoptyp;untergruppe;biotopgruppe;lr_gr
  1;01.01.100;2;5;Bruchwald §;Bruchwald;WB;WB;15;§;1;0;WB;WB;W;LR1
  2;01.01.110;3;5;;Erlen-Bruchwald nährstoffreicher Standorte §;;WBR;0;§;101;0;WBR;WB;W;LR1
  3;01.01.120;4;5;;Birken-Erlen-Bruchwald nährstoffärmerer Standorte §;;WBA;0;§;102;0;WBA;WB;W;LR1
  4;01.01.200;5;6;Moorwald §;Moorwald;WM;WM;16;§;2;0;WM;WM;W;LR1
  5;01.01.210;6;6;Birkenmoorwald §;Moorbirken-Moorwald;WMB;WMB;16;§;103;3;WMB;WM;W;LR1
  6;01.01.220;7;6;Kiefernmoorwald §;Waldkiefern-Moorwald;WMK;WMK;16;§;104;4;WMK;WM;W;LR1
  7;01.01.230;8;6;;Bergkiefern-Moorwald;;WML;0;§;105;0;WML;WM;W;LR1
  8;01.01.240;9;6;Fichtenmoorwald §;Fichten-Moorwald;WMF;WMF;16;§;106;5;WMF;WM;W;LR1
  9;01.01.001;10;6;;Sonstiger Moorwald;;WMS;0;§;107;0;WMS;WM;W;LR1
  10;01.01.300;11;7;Sumpfwald §;Sumpfwald;WP;WP;17;§;108;6;WP;WP;W;LR1
  11;01.02.000;12;0;Auwald §;;WA;;18;;7;0;WA;WA;W;LR1
  12;01.02.100;13;8;Weichholz-Auwald (Weiden-Auwald) §;Weichholz-Auwald (Weiden-Auwald);WAW;WW;18;§;109;8;WW;WW;W;LR1
  13;01.02.200;14;8;Hartholz-Auwald (Eichen-Eschen-Ulmen-Auwald) §;Hartholz-Auwald (Eichen-Eschen-Ulmen-Auwald);WAH;WH;18;§;110;9;WH;WH;W;LR1
  14;01.02.300;15;8;Erlen-Eschenwald der Auen und Quellbereiche §;Erlen-Eschenwald der Auen und Quellbereiche;WAE;WA;18;§;10;0;WAE;WA;W;LR1
  15;01.02.310;16;8;;Traubenkirschen-Erlen-Eschenwal der Niederungen;;WAN;18;§;112;0;WAN;WA;W;LR1
  16;01.02.320;17;8;;Erlen- und Eschen-Bachwald des Berg- und Hügellandes;;WAB;18;§;113;0;WAB;WA;W;LR1
  17;01.02.330;18;8;;Erlen-Eschen-Quellwald;;WAQ;18;§;114;0;WAQ;WA;W;LR1
  18;01.04.000;19;20;Schlucht- und Blockschuttwald §;Schlucht- und Blockschuttwälder;WS;WS;43;§;11;0;WS;WS;W;LR1
  19;01.04.100;20;20;Ah-Es-Wald felsiger Schatthänge und Schluchten §;Ahorn-Eschenwald felsiger Schatthänge und Schluchten;WSE;WSE;43;§;115;12;WSE;WS;W;LR1
  20;01.04.300;21;20;Ahorn-Linden-Schutthaldenwald §;Ahorn-Linden-Schutthaldenwald;WSL;WSL;43;§;116;13;WSL;WS;W;LR1
  21;01.05.000;22;0;Laubwald, mesophil;;WL;;0;;14;0;WL;WL;W;LR1
  22;01.05.100;23;0;mesophiler Buchen(misch)wald;Mesophiler Buchen(misch)wald;WLB;WL;0;;117;15;WL;WL;W;LR1
  23;01.05.110;24;0;;Mesophiler Buchenwald des Tief- und Hügellandes;;WLN;0;;118;0;WLN;WL;W;LR1
  24;01.05.120;25;0;;Mesophiler Buchenwald des Berglandes;;WLB;0;;119;0;WLB;WL;W;LR1
  25;01.05.200;26;0;Eichen-Hainbuchenwald;Eichen-Hainbuchenwald;WLE;WE;0;;16;0;WLE;WL;W;LR1
  26;01.05.210;27;0;;Stieleichen-Hainbuchenwald feuchter Standorte;;WEF;0;(§);124;0;WEF;WE;W;LR1
  27;01.05.220;28;0;;Traubeneichen-Hainbuchenwald mäßig trockener Standorte;;WET;0;;125;0;WET;WE;W;LR1
  28;01.05.230;29;0;;Lindenreicher Eichen-Hainbuchenwald subkontinentaler Prägung;;WES;0;(§);126;0;WES;WE;W;LR1
  29;01.05.001;30;0;Laubwald, bodensauer;;WL;;0;;17;0;WC;WC;W;LR1
  30;01.05.300;31;0;bodensaurer Buchen(misch)wald;Bodensaurer Buchen(misch)wald;WCB;WC;0;;18;0;WCB;WC;W;LR1
  31;01.05.310;32;0;;Bodensaurer Buchenwald des Tief- und Hügellandes;;WCN;0;;121;0;WCN;WC;W;LR1
  32;01.05.330;33;0;;Bodensaurer Tannen-Fichten-Buchenwald des Berglandes;;WCB;0;;122;0;WCB;WC;W;LR1
  33;01.05.400;34;0;bodensauer Eichen(misch)wald;Bodensaurer Eichen(misch)wald;WCE;WQ;0;;127;19;WQ;WQ;W;LR1
  34;01.05.410;35;0;;Bodensaurer Eichen-Mischwald armer Standorte;;WQS;0;;128;0;WQS;WQ;W;LR1
  35;01.05.420;36;0;;Sonstiger bodensaurer Eichen-Mischwald des Tieflandes;;WQN;0;;129;0;WQN;WQ;W;LR1
  36;01.05.430;37;0;;Bodensaurer Eichen-Mischwald des Hügel- und Berglandes;;WQB;0;;130;0;WQB;WQ;W;LR1
  37;01.03.000;38;18;Laubwald trockenwarmer Standorte §;Laubwald trockenwarmer Standorte;WT;WT;41;§;20;0;WT;WT;W;LR1
  38;01.03.100;39;18;;Eichenwald trockenwarmer Standorte;;WTE;0;§;131;0;WTE;WT;W;LR1
  39;01.03.200;40;18;;Eichen-Hainbuchenwald trockenwarmer Standorte;;WTH;0;§;132;0;WTH;WT;W;LR1
  40;01.03.300;41;18;;Buchenwald trockenwarmer Standorte;;WTB;0;§;133;0;WTB;WT;W;LR1
  41;01.06.001;42;18;Kiefernwald (§);;WK;;0;;21;0;WK;WK;W;LR1
  42;01.06.100;43;18;Kiefernwald trockenwarmer Standorte;Naturnaher Kiefernwald trockenwarmer Standorte;WKT;WKT;41;§;136;22;WKT;WK;W;LR1
  43;01.06.200;44;0;sonstiger naturnaher Kiefernwald;Sonstiger naturnaher Kiefernwald;WKK;WKS;0;;137;23;WKS;WK;W;LR1
  44;01.06.300;45;0;Fichtenwald;Naturnaher Fichtenwald;WF;WF;0;;24;0;WF;WF;W;LR1
  45;01.06.320;46;0;Bergland-Fichtenwald;Naturnaher Fichtenwald des Berglandes;WFB;WFB;0;;139;25;WFB;WF;W;LR1
  46;01.06.330;47;6;Tiefland-Fichtenwald §;Naturnaher Fichtenwald des Tieflandes;WFT;WFN;16;(§);138;26;WFN;WF;W;LR1
  47;01.06.310;48;20;;Naturnaher Fichten-Blockschuttwald;;WFS;0;§;140;0;WFS;WF;W;LR1
  48;01.11.000;49;19;höhlenreiche Altholzinsel §;Höhlenreiche Altholzinsel;WH;WZ;42;§;144;27;WZ;WZ;W;LR1
  49;01.00.001;50;0;Strukturreicher Waldbestand;Strukturreicher Waldbestand;WR;WR;0;;141;28;WR;WR;W;LR1
  50;01.10.200;51;0;;Strukturreicher Waldrand;;WO;0;;143;0;WO;WO;W;LR1
  51;01.10.000;52;0;;Vorwald(stadien), Pionierwälder;;WV;0;;142;0;WV;WV;W;LR1
  52;02.01.100;53;0;Feuchtgebüsch §;Feuchtgebüsch;BF;BF;0;§;29;0;BF;BF;B;LR2
  53;02.01.110;54;2;Moor- und Sumpfgebüsch §;Weiden-Moor- und Sumpfgebüsch;BFS;BFS;12;§;145;30;BFS;BF;B;LR2
  54;02.01.120;55;8;Auengebüsch §;Weiden-Auengebüsch;BFA;BFA;18;§;146;31;BFA;BF;B;LR2
  55;02.01.200;56;0;;Gebüsch frischer Standorte;;BM;0;;147;0;BM;BM;B;LR2
  56;02.01.400;57;18;Trockengebüsch §;Trockengebüsch;BT;BT;41;§;148;32;BT;BT;B;LR2
  57;02.02.100;58;0;Hecke;Feldhecke;BH;BH;0;;149;33;BH;BH;B;LR2
  58;02.03.200;59;0;Feldgehölz;Feldgehölz;BA;BA;0;;150;34;BA;BA;B;LR2
  59;10.03.000;60;24;Streuobstwiese §;Streuobstwiese;BS;BS;61;§;151;35;BS;BS;B;LR2
  60;02.03.450;61;19;höhlenreicher Einzelbaum §;Höhlenreicher Einzelbaum;BZ;BZ;42;§;152;36;BZ;BZ;B;LR2
  61;02.03.400;62;0;sonstiger wertvoller Gehölzbestand;Sonstiger wertvoller Gehölzbestand;BY;BY;0;;37;0;BY;BY;B;LR2
  62;02.03.410;63;0;;Allee und Baumreihe;;BYA;0;;153;0;BYA;BY;B;LR2
  63;02.03.420;64;0;;Obstbaumreihe und -allee;;BYO;0;;154;0;BYO;BY;B;LR2
  64;02.03.440;65;0;;Kopfbaum und Kopfbaumreihe;;BYK;0;;155;0;BYK;BY;B;LR2
  65;02.03.430;66;0;;Einzelbaum, Baumgruppe;;BYE;0;;156;0;BYE;BY;B;LR2
  66;11.03.120;67;0;;Park, sonstiger Gehölzbestand;;BYP;0;;157;0;BYP;BY;B;LR2
  67;03.01.100;68;9;naturnaher Quellbereich §;Naturnaher Quellbereich;FQ;FQ;21;§;158;38;FQ;FQ;F;LR4
  68;03.01.110;69;9;Sturzquelle §;Sturzquelle;FQS;FQS;21;§;159;39;FQS;FQ;F;LR4
  69;03.01.120;70;9;Tümpelquelle §;Tümpelquelle;FQT;FQT;21;§;160;40;FQT;FQ;F;LR4
  70;03.01.101;71;9;Sickerquelle §;;FQN;;21;;41;0;FQN;FQ;F;LR4
  71;03.01.130;72;9;;Kalkarme Sickerquelle;;FQA;0;§;161;0;FQA;FQ;F;LR4
  72;03.01.140;73;9;;Kalkreiche Sickerquelle;;FQR;0;§;162;0;FQR;FQ;F;LR4
  73;03.01.150;74;9;;Kalktuffquelle;;FQK;0;§;163;0;FQK;FQ;F;LR4
  74;03.02.100;75;10;naturnaher Bach §;Naturnaher Bach;FB;FB;22;§;164;42;FB;FB;F;LR4
  75;03.02.111;76;10;naturnaher Mittelgebirgsbach §;;FBM;;22;;43;0;FBM;FB;F;LR4
  76;03.02.110;77;10;;Naturnaher sommerkalter Bach (Berglandbach);;FBB;0;§;165;0;FBB;FB;F;LR4
  77;03.02.120;78;10;naturnaher Flachlandbach §;Naturnaher sommerwarmer Bach (Tieflandbach);FBN;FBN;22;§;166;44;FBN;FB;F;LR4
  78;03.02.210;79;0;;Begradigter/ausgebauter Bach mit naturnahen Elementen;;FBA;0;;167;0;FBA;FB;F;LR4
  79;03.03.100;80;10;naturnaher Fluß §;Naturnaher Fluss;FF;FF;22;§;168;45;FF;FF;F;LR4
  80;03.03.110;81;10;;Naturnaher sommerkalter Fluss;;FFB;0;§;169;0;FFB;FF;F;LR4
  81;03.03.120;82;10;;Naturnaher sommerwarmer Fluss;;FFN;0;§;170;0;FFN;FF;F;LR4
  82;03.03.210;83;0;;Begradigter/ausgebauter Fluss mit naturnahen Elementen;;FFA;0;;171;0;FFA;FF;F;LR4
  83;03.05.000;84;10;;Zeitweilig trockenfallende Schlammflächen mit Pioniervegetation;;FFS;0;§;172;0;FFS;FF;F;LR4
  84;03.04.110;85;0;Graben/Kanal;Naturnaher Graben;FG;FG;0;;173;46;FG;FG;F;LR4
  85;03.06.000;86;10;;Sonstige Überschwemmungsgebiete;;FU;0;§;174;0;FU;FU;F;LR4
  86;04.01.000;87;32;naturnahes Kleingewässer §;Naturnahes Kleingewässer;SK;SK;24;§;47;0;SK;SK;S;LR3
  87;04.01.100;88;32;naturnahes, temporäres Kleingewässer §;Naturnahes temporäres Kleingewässer (Tümpel);SKT;SKT;24;§;175;48;SKT;SK;S;LR3
  88;04.01.210;89;32;naturnahes, ausdauerndes Kleingewässer §;Naturnahes ausdauerndes nährstoffarmes Kleingewässer;SKA;SKA;24;§;176;49;SKA;SK;S;LR3
  89;04.01.220;90;32;;Naturnahes ausdauerndes nährstoffreiches Kleingewässer;;SKR;24;§;177;0;SKR;SK;S;LR3
  90;04.02.000;91;1;Moorgewässer §;Moorgewässer;SM;SM;11;§;178;50;SM;SM;S;LR3
  91;04.02.100;92;1;;Moorgewässer natürlicher Entstehung;;SMN;11;§;179;0;SMN;SM;S;LR3
  92;04.02.200;93;1;;Naturnahes anthropogenes Moorgewässer;;SMM;11;§;180;0;SMM;SM;S;LR3
  93;04.03.000;94;11;Altwasser §;Altwasser;SA;SA;23;§;181;51;SA;SA;S;LR4
  94;04.04.000;95;32;Teich;Naturnaher Teich/Weiher;SS;SS;0;§;182;52;SS;SS;S;LR3
  95;04.04.100;96;32;;Naturnaher mesotropher Teich/Weiher;;SSA;0;§;183;0;SSA;SS;S;LR3
  96;04.04.200;97;32;;Naturnaher eutropher Teich/Weiher;;SSR;0;§;184;0;SSR;SS;S;LR3
  97;04.05.100;98;32;;Naturnahe Rest- und Abbaugewässer;;SR;0;§;185;0;SR;SR;S;LR3
  98;04.05.110;99;32;;Naturnahes nährstoffarmes Abbaugewässer;;SRA;0;§;186;0;SRA;SR;S;LR3
  99;04.05.120;100;32;;Naturnahes nährstoffreiches Abbaugewässer;;SRR;0;§;187;0;SRR;SR;S;LR3
  100;04.05.200;101;0;sonstiges Stillgewässer;Sonstiges naturnahes Stillgewässer;SY;SY;0;(§);188;53;SY;SY;S;LR3
  101;04.05.210;102;0;;Sonstiges naturnahes nährstoffarmes Stillgewässer;;SYA;0;(§);189;0;SYA;SY;S;LR3
  102;04.05.220;103;0;;Sonstiges naturnahes nährstoffreiches Stillgewässer;;SYR;0;(§);190;0;SYR;SY;S;LR3
  103;04.07.100;104;32;;Verlandungsbereiche mesotropher Stillgewässer;;SO;0;§;191;0;SO;SO;S;LR3
  104;04.07.110;105;32;;Tauch- und Schwimmblattvegetation mesotropher Stillgewässer;;SOW;0;§;192;0;SOW;SO;S;LR3
  105;04.07.120;106;32;;Strandlingsfluren und Zwergbinsen-Gesellschaften;;SOS;0;§;193;0;SOS;SO;S;LR3
  106;04.07.130;107;32;;Röhricht mesotropher Stillgewässer;;SOR;0;§;194;0;SOR;SO;S;LR3
  107;04.07.140;108;32;;Großseggen-, Wollgras- und Binsenbestände mesotropher Gewässer;;SOG;0;§;195;0;SOG;SO;S;LR3
  108;04.07.200;109;32;Verlandungsbereich stehender Gewässer §;Verlandungsbereiche eutropher Stillgewässer;SV;SV;25;§;196;54;SV;SV;S;LR3
  109;04.07.210;110;32;Tauch- und Schwimmblattvegetation §;Tauch- und Schwimmblattvegetation eutropher Stillgewässer;SVW;SVW;25;§;197;55;SVW;SV;S;LR3
  110;04.07.220;111;32;Röhricht (an Gewässern) §;Röhricht eutropher Stillgewässer;SVR;SVR;25;§;198;56;SVR;SV;S;LR3
  111;04.07.230;112;32;Großseggenried (an Gewässern) §;Großseggenried eutropher Stillgewässer;SVG;SVG;25;§;199;57;SVG;SV;S;LR3
  112;05.01.000;113;1;Hoch- und Zwischenmoor §;Hoch- und Zwischenmoor;MH;MH;11;§;58;0;MH;MH;M;LR5
  113;05.01.100;114;1;Hochmoor §;Hochmoor;MHH;MHH;11;§;200;59;MHH;MH;M;LR5
  114;05.01.200;115;0;Zwischenmoor §;;MHZ;;11;;60;0;MHZ;MH;M;LR5
  115;05.01.210;116;1;;Zwischenmoor des Tieflandes;;MHN;0;§;201;0;MHN;MH;M;LR5
  116;05.01.220;117;1;;Zwischenmoor des Berglandes;;MHB;0;§;202;0;MHB;MH;M;LR5
  117;05.02.000;118;1;Torfstich in Regeneration §;Moordegenerations- und -regenerationsstadien;MT;MT;11;§;203;61;MT;MT;M;LR5
  118;05.02.100;119;1;;Moorstadium mit Dominanz von Wollgras;;MTW;0;§;204;0;MTW;MT;M;LR5
  119;05.02.200;120;1;;Moorstadium mit Dominanz von Zwergsträuchern;;MTZ;0;§;205;0;MTZ;MT;M;LR5
  120;05.02.300;121;1;;Moorstadium mit Dominanz von Pfeifengras;;MTP;0;§;206;0;MTP;MT;M;LR5
  121;05.00.001;122;1;Niedermoor/Sumpf §;;MN;;11;;62;0;MN;MN;M;LR5
  122;05.04.101;123;1;Kleinseggenried §;;MNK;;11;;63;0;MNK;MN;M;LR5
  123;05.04.100;124;1;;Kleinseggenried;;MK;0;§;207;0;MK;MK;M;LR5
  124;05.04.110;125;1;;Kleinseggenried basenarmer Standorte;;MKA;0;§;208;0;MKA;MK;M;LR5
  125;05.04.120;126;1;;Kleinseggenried basenreicher Standorte;;MKR;0;§;209;0;MKR;MK;M;LR5
  126;05.04.201;127;0;Großseggenried (außerhalb Verland.) §;;MNG;;12;;64;0;MNG;MN;M;LR5
  127;05.04.200;128;2;;Großseggenried (außerhalb stehender Gewässer);;MG;0;§;210;0;MG;MG;M;LR5
  128;05.04.210;129;2;;Großseggenried nährstoffreicher Standorte;;MGR;0;§;211;0;MGR;MG;M;LR5
  129;05.04.220;130;2;;Großseggenried nährstoffarmer Standorte;;MGA;0;§;212;0;MGA;MG;M;LR5
  130;05.04.301;131;2;Binsen-, Waldsimsen-, Schachtelhalmsumpf §;;MNB;;12;;65;0;MNB;MN;M;LR5
  131;05.04.300;132;2;;Binsen-, Waldsimsen- und Schachtelhalmsumpf;;MB;0;§;213;0;MB;MB;M;LR5
  132;05.04.401;133;3;Röhricht (außerhalb Verland.) §;;MNR;;13;;66;0;MNR;MN;M;LR5
  133;05.04.400;134;3;;Röhricht (außerhalb stehender Gewässer);;MR;0;§;214;0;MR;MR;M;LR5
  134;05.04.410;135;3;;Schilfröhricht;;MRS;0;§;215;0;MRS;MR;M;LR5
  135;05.04.420;136;3;;Rohrglanz-Röhricht;;MRP;0;§;216;0;MRP;MR;M;LR5
  136;05.04.430;137;3;;Wasserschwaden-Röhricht;;MRW;0;§;217;0;MRW;MR;M;LR5
  137;05.04.440;138;3;;Rohrkolben-Röhricht;;MRR;0;§;218;0;MRR;MR;M;LR5
  138;05.04.450;139;3;;Schneiden-Röhricht;;MRC;0;§;219;0;MRC;MR;M;LR5
  139;05.04.460;140;3;;Sonstiges Landröhricht;;MRY;0;§;220;0;MRY;MR;M;LR5
  140;06.01.000;141;0;Feuchtgrünland (extensiv) (§);Sonstiges Feucht- und Nassgrünland (extensiv);GF;GF;0;(§);224;67;GF;GF;G;LR5
  141;06.01.100;142;4;Naßwiese §;Nasswiese;GFS;GFS;14;§;225;68;GFS;GF;G;LR5
  142;06.01.300;143;4;;Wechselfeuchte Stromatalwiese;;GFA;0;§;226;0;GFA;GF;G;LR5
  143;06.01.201;144;4;Pfeifengraswiese §;;GFP;;14;;69;0;GFP;GF;G;LR5
  144;06.01.200;145;4;;Pfeifengras-Wiese;;GP;0;§;221;0;GP;GP;G;LR5
  145;06.01.210;146;4;;Pfeifengras-Wiese basenreicher Standorte;;GPR;0;§;222;0;GPR;GP;G;LR5
  146;06.01.220;147;4;;Pfeifengras-Wiese bodensaurer Standorte;;GPA;0;§;223;0;GPA;GP;G;LR5
  147;06.01.400;148;4;seggen- und binsenreiche Feuchtweiden §;Seggen- und binsenreiche Feuchtweiden und Flutrasen;GFF;GFF;14;§;227;70;GFF;GF;G;LR5
  148;06.01.500;149;0;sonstiges Feuchtgrünland;Sonstiges artenreiches Feuchtgrünland;GFY;GFY;0;;228;71;GFY;GF;G;LR5
  149;06.02.100;150;0;Grünland frischer Standorte (extensiv) (§);Extensiv genutztes mageres Grünland frischer Standorte;GM;GM;0;§;229;72;GM;GM;G;LR5
  150;06.02.110;151;15;magere Frischwiese §;Magere Frischwiese;GMM;GMM;32;§;230;73;GMM;GM;G;LR5
  151;06.02.130;152;15;;Submontane Goldhafer-Frischwiese;;GMS;0;§;231;0;GMS;GM;G;LR5
  152;06.02.120;153;15;;Magerweide frischer Standorte;;GMW;0;§;232;0;GMW;GM;G;LR5
  153;06.02.200;154;0;;Sonstiges extensiv genutztes Grünland frischer Standorte;;GY;0;;233;0;GY;GY;G;LR5
  154;06.02.211;155;0;sonstige, extensiv genutzte Frischwiese;;GMY;;0;;74;0;GMY;GM;G;LR5
  155;06.02.210;156;0;;Sonstige extensiv genutzte Frischwiese;;GYM;0;;234;0;GYM;GY;G;LR5
  156;06.02.220;157;0;;Sonstige extensiv genutzte Weide frischer Standorte;;GYW;0;;235;0;GYW;GY;G;LR5
  157;06.02.230;158;0;;Sonstiges extensiv genutztes frisches Grünland;;GYY;0;;303;0;GYY;GY;G;LR5
  158;06.02.300;159;15;Bergwiese §;Bergwiese;GB;GB;32;§;236;75;GB;GB;G;LR5
  159;07.01.100;160;0;Staudenflur feuchter Standorte (§);Staudenfluren feuchter Standorte;LF;LF;0;(§);237;76;LF;LF;L;LR5
  160;07.01.110;161;2;Hochstaudenflur sumpfiger Standorte §;Hochstaudenflur sumpfiger Standorte;LFS;LFS;12;§;238;77;LFS;LF;L;LR5
  161;07.01.120;162;10;Uferstaudenflur (§);Uferstaudenflur;LFU;LFU;22;(§);239;78;LFU;LF;L;LR5
  162;07.01.130;163;0;;Hochmontan-subalpine Hochstaudenfluren;;LFB;0;§;240;0;LFB;LF;L;LR5
  163;07.01.200;164;0;;Staudenfluren und Säume frischer Standorte;;LM;0;;241;0;LM;LM;L;LR5
  164;07.01.210;165;0;;Staudenflur nährstoffreicher frischer Standorte;;LMR;0;;242;0;LMR;LM;L;LR5
  165;07.01.220;166;0;;Staudenflur nährstoffärmerer frischer Standorte;;LMA;0;;243;0;LMA;LM;L;LR5
  166;07.01.300;167;18;Staudenflur trockenwarmer Standorte §;Staudenfluren und Säume trockenwarmer Standorte;LT;LT;41;§;244;79;LT;LT;L;LR5
  167;07.03.000;168;0;Ruderalflur;Ruderalfluren;LR;LR;0;;245;80;LR;LR;L;LR5
  168;07.03.100;169;0;;Ruderalflur trockenwarmer Standorte;;LRT;0;;246;0;LRT;LR;L;LR5
  169;07.03.200;170;0;;Ruderalflur frischer bis feuchter Standorte;;LRM;0;;247;0;LRM;LR;L;LR5
  170;07.03.300;171;0;;Dörfliche Ruderalflur;;LRR;0;;248;0;LRR;LR;L;LR5
  171;08.01.000;172;17;Zwergstrauchheide §;Zwergstrauchheide;HZ;HZ;34;§;81;0;HZ;HZ;H;LR5
  172;08.01.100;173;17;Feuchtheide §;Feuchtheide;HZF;HZF;34;§;249;82;HZF;HZ;H;LR5
  173;08.01.200;174;17;trockene Sandheide §;Trockene Sandheide;HZS;HZS;34;§;250;83;HZS;HZ;H;LR5
  174;08.01.300;175;17;Berg- und Felsheide §;Bergheide;HZB;HZB;34;§;251;84;HZB;HZ;H;LR5
  175;08.01.400;176;17;;Felsbandheide;;HZG;0;§;252;0;HZG;HZ;H;LR5
  176;08.02.000;177;17;Besenginsterheide §;Besenginsterheide;HG;HG;34;§;253;85;HG;HG;H;LR5
  177;08.03.000;178;17;;Wacholderheiden und -gebüsche;;HW;0;§;254;0;HW;HW;H;LR5
  178;08.04.000;179;16;Borstgrasrasen §;Borstgrasrasen;RB;RB;33;§;255;86;RB;RB;H;LR5
  179;08.04.100;180;16;;Borstgrasrasen frischer bis trockener Standorte;;RBM;0;§;256;0;RBM;RB;H;LR5
  180;08.04.200;181;16;;Borstgrasrasen feuchter Standorte;;RBF;0;§;257;0;RBF;RB;H;LR5
  181;08.05.000;182;14;Trockenrasen §;;RT;;31;;87;0;RT;RT;H;LR5
  182;08.05.101;183;14;Sand- und Silikatmagerrasen §;;RTS;;31;;88;0;RTS;RT;H;LR5
  183;08.05.100;184;14;;Sand- und Silikatmagerrasen;;RS;0;§;258;0;RS;RS;H;LR5
  184;08.05.110;185;14;;Annueller Sandmagerrasen;;RSA;0;§;259;0;RSA;RS;H;LR5
  185;08.05.120;186;14;;Silbergrasrasen;;RSS;0;§;260;0;RSS;RS;H;LR5
  186;08.05.130;187;14;;Sonstiger Sand- und Silikatmagerrasen;;RSY;0;§;261;0;RSY;RS;H;LR5
  187;08.05.001;188;14;Halbtrockenrasen §;;RTH;;31;;89;0;RTH;RT;H;LR5
  188;08.05.200;189;14;;Trocken- und Halbtrockenrasen;;RH;0;§;262;0;RH;RH;H;LR5
  189;08.05.210;190;14;;Subkontinentaler Halbtrockenrasen;;RHS;0;§;263;0;RHS;RH;H;LR5
  190;08.05.220;191;14;;Kontinentaler Steppen-Trockenrasen;;RHK;0;§;264;0;RHK;RH;H;LR5
  191;08.05.230;192;14;;Submediterraner Halbtrockenrasen;;RHM;0;§;265;0;RHM;RH;H;LR5
  192;08.05.240;193;14;;Halbtrockenrasen bodensaurer Standorte;;RHC;0;§;266;0;RHC;RH;H;LR5
  193;08.06.000;194;29;;Schwermetallrasen;;RM;0;§;267;0;RM;RM;H;LR5
  194;09.02.100;195;21;offene Felsbildung §;Offene natürliche und naturnahe Felsbildungen;YF;YF;51;§;268;90;YF;YF;Y;LR5
  195;09.02.110;196;21;;Natürlicher Kalkfels;;YFK;0;§;269;0;YFK;YF;Y;LR5
  196;09.02.120;197;21;;Natürlicher basenarmer Silikatfels;;YFA;0;§;270;0;YFA;YF;Y;LR5
  197;09.02.130;198;21;;Natürlicher basenreicher Silikatfels;;YFR;0;§;271;0;YFR;YF;Y;LR5
  198;09.02.140;199;30;;Natürlicher Serpentinitfels;;YFS;0;§;272;0;YFS;YF;Y;LR5
  199;09.02.200;200;22;offene nat. Block- und Geröllhalde §;Offene natürliche Block- und Geröllhalde;YG;YG;52;§;273;91;YG;YG;Y;LR5
  200;09.02.210;201;22;;Natürliche Block- und Geröllhalde aus basenreichem Silikatgestein;;YGR;0;§;274;0;YGR;YG;Y;LR5
  201;09.02.220;202;22;;Natürliche Block- und Geröllhalde aus basenarmen Silikatgestein;;YGA;0;§;275;0;YGA;YG;Y;LR5
  202;09.02.230;203;0;;Naturnahe Block- und Geröllhalden aus Serpentinitgestein;;YGS;0;(§);276;0;YGS;YG;Y;LR5
  203;09.01.000;204;0;Stollen früherer Bergwerke §;Höhlen und Stollen;YT;YT;62;§;277;92;YT;YT;Y;LR2
  204;09.01.100;205;0;;Höhle;;YTH;0;§;278;0;YTH;YT;Y;LR2
  205;09.01.200;206;25;;Stollen früherer Bergwerke;;YTS;0;§;279;0;YTS;YT;Y;LR2
  206;09.03.000;207;23;offene Binnendüne §;Offene Binnendüne;YB;YB;53;§;280;93;YB;YB;Y;LR5
  207;09.03.100;208;23;;Offene Binnendüne mit lückigen Grasfluren;;YBG;0;§;281;0;YBG;YB;Y;LR5
  208;09.03.200;209;23;;Offene Binnendüne mit trockenen Sandheiden;;YBH;0;§;282;0;YBH;YB;Y;LR5
  209;09.04.000;210;0;;Steilwände aus Lockergestein;;YW;0;(§);283;0;YW;YW;Y;LR5
  210;09.04.100;211;0;;Sand- und Kieswand;;YWS;0;(§);284;0;YWS;YW;Y;LR5
  211;09.04.200;212;31;;Lehm- und Lößwand;;YWL;0;§;285;0;YWL;YW;Y;LR5
  212;09.07.200;213;26;Steinrücken §;Steinrücken;YS;YS;63;§;290;94;YS;YS;Y;LR5
  213;09.07.100;214;0;;Unbefestigte Wege;;YH;0;;286;0;YH;YH;Y;LR5
  214;09.07.111;215;27;Hohlweg §;;YH;;64;;95;0;YH;YH;Y;LR5
  215;09.07.110;216;27;;Hohlweg;;YHH;0;§;287;0;YHH;YH;Y;LR5
  216;09.07.120;217;0;;Unbefestigter Feldweg;;YHF;0;;288;0;YHF;YH;Y;LR5
  217;09.07.130;218;0;;Sonstiger unbefestigter Weg;;YHY;0;;289;0;YHY;YH;Y;LR5
  218;09.07.301;219;28;Trockenmauer §;;YM;;65;;96;0;YM;YM;Y;LR5
  219;09.07.300;220;28;;Trockenmauer;;YMT;0;§;292;0;YMT;YM;Y;LR5
  220;09.07.400;221;0;;Sonstige Natursteinmauer;;YMY;0;;293;0;YMY;YM;Y;LR5
  221;10.01.100;222;0;Acker, extensiv;Extensiv genutzter wildkrautreicher Acker;UA;UA;0;;294;0;UA;UA;U;LR2
  222;10.01.110;223;0;;Sandacker;;UAS;0;;295;0;UAS;UA;U;LR2
  223;10.01.120;224;0;;Basenarmer Löß- und Lehmacker;;UAA;0;;296;0;UAA;UA;U;LR2
  224;10.01.130;225;0;;Basenreicher Löß- und Lehmacker;;UAR;0;;297;0;UAR;UA;U;LR2
  225;10.01.140;226;0;;Acker auf skelettreichem Silikatverwitterungsboden des Berglandes;;UAB;0;;298;0;UAB;UA;U;LR2
  226;10.04.100;227;0;Weinberg, extensiv (§);Weinberg, extensiv;UR;UR;0;(§);299;0;UR;UR;U;LR2
  227;11.06.000;228;0;zoologisch/botanisch wertvoller Bereich;Zoologisch/botanisch wertvoller Bereich;ZB;ZB;0;;300;0;ZB;ZB;U;LR5
  228;11.06.100;229;0;;Botanisch wertvoller Bereich;;ZBB;0;;301;0;ZBB;ZB;U;LR5
  229;11.06.200;230;0;;Zoologisch wertvoller Bereich;;ZBZ;0;;302;0;ZBZ;ZB;U;LR5

referenz_gefaehrdung.csv
------------------------

 .. code-block:: bash

  id;name;nummer;identity
  1;Aufforstung | Bepflanzung;10;GefahrArtComposite-20130502-2003-17
  2;keine Gefährdung;1;GefahrArtComposite-20130502-2003-22
  3;Aufschüttung | Einebnung;5;GefahrArtComposite-20130502-2003-5
  4;Ausbreitung von Neophyten;25;GefahrArtComposite-20130502-2003-25
  5;Flächenverlust;22;GefahrArtComposite-20130502-2003-9
  6;Biozideinsatz;15;GefahrArtComposite-20130502-2003-18
  7;sonstige Ablagerung;7;GefahrArtComposite-20130502-2003-11
  8;Eutrophierung;14;GefahrArtComposite-20130502-2003-20
  9;Zerschneidung;23;GefahrArtComposite-20130502-2003-12
  10;Baumaßnahmen | Ausbau;2;GefahrArtComposite-20130502-2003-8
  11;Ablagerung | Müll | Abfall;6;GefahrArtComposite-20130502-2003-0
  12;Immissionsschäden;20;GefahrArtComposite-20130502-2003-7
  13;Gewässerausbau;3;GefahrArtComposite-20130502-2003-19
  14;Entwässerung;13;GefahrArtComposite-20130502-2003-10
  15;Landwirtschaft;26;GefahrArtComposite-20130502-2003-26
  16;Umbruch;12;GefahrArtComposite-20130502-2003-1
  17;Abbau | Abgrabung;4;GefahrArtComposite-20130502-2003-2
  18;Verkehr;17;GefahrArtComposite-20130502-2003-14
  19;Schadstoffeintrag;18;GefahrArtComposite-20130502-2003-21
  20;Erosion;21;GefahrArtComposite-20130502-2003-6
  21;Aufgabe der Nutzung;8;GefahrArtComposite-20130502-2003-13
  22;Gewässerverunreinigung;19;GefahrArtComposite-20130502-2003-3
  23;Freizeitaktivitäten;16;GefahrArtComposite-20130502-2003-15
  24;sonstige Gefährdung;24;GefahrArtComposite-20130502-2003-23
  25;Abholzung | Rodung;11;GefahrArtComposite-20130502-2003-4
  26;Intensivierung der Nutzung;9;GefahrArtComposite-20130502-2003-16
  27;Eigentümer/Anwohner;27;GefahrArtComposite-20140122-0900-0
  28;Industrie;28;GefahrArtComposite-20140610-1445-0
  29;Fischerei;29;GefahrArtComposite-20141001-1301-0


referenz_kartierer.csv
----------------------

Die bisherigen Einträge der Kartierer müssen noch überarbeitet werden.

 .. code-block:: bash



referenz_massnahmen.csv
-----------------------

 .. code-block:: bash

  id;referenz;massnahme;beschreibung;lr1;lr2;lr3;lr4;lr5
  1;1.01.01;Gehölzentfernung einmalig/Rodung;1.01.01 Gehölzentfernung einmalig/Rodung;1;1;1;1;1
  2;1.01.02;Gehölzentfernung regelmäßig/Beseitigung von Neuaustrieb;1.01.02 Gehölzentfernung regelmäßig/Beseitigung von Neuaustrieb;1;1;1;1;1
  3;1.02;Beseitigung krautiger Konkurrenzpflanzen/Neophyten;1.02 Beseitigung krautiger Konkurrenzpflanzen/Neophyten;1;1;1;1;1
  4;1.03;Beseitigung von Ablagerungen (Schnittgut, Holz, Müll, Kirrungen etc.);1.03 Beseitigung von Ablagerungen (Schnittgut, Holz, Müll, Kirrungen etc.);0;1;1;1;1
  5;1.04;Beseitigung militärischer Altlasten;1.04 Beseitigung militärischer Altlasten;1;0;0;0;1
  6;1.05.01;umfassende Gewässerrenaturierung (bitte erläutern);1.05.01 umfassende Gewässerrenaturierung (bitte erläutern);0;0;0;1;0
  7;1.05.02;Umbau/Neubau der Stauanlagen;1.05.02 Umbau/Neubau der Stauanlagen;0;0;1;0;0
  8;1.05.03;Umbau/Neubau der Zuleitungsanlagen;1.05.03 Umbau/Neubau der Zuleitungsanlagen;0;0;1;0;0
  9;1.05.04;Beseitigung von Querverbauungen/Sicherung der Durchgängigkeit;1.05.04 Beseitigung von Querverbauungen/Sicherung der Durchgängigkeit;0;0;1;1;0
  10;1.05.05;Beseitigung von Uferverbauungen;1.05.05 Beseitigung von Uferverbauungen;0;0;1;1;0
  11;1.05.06;Öffnen von verrohrten/kanalisierten Gewässerabschnitten;1.05.06 Öffnen von verrohrten/kanalisierten Gewässerabschnitten;0;0;0;1;0
  12;1.05.07;Anlage / Instandsetzung von Fischpässen/-treppen;1.05.07 Anlage / Instandsetzung von Fischpässen/-treppen;0;0;0;1;0
  13;1.05.08;Anlage von Durchlässen/Unterführungen;1.05.08 Anlage von Durchlässen/Unterführungen;0;0;0;1;0
  14;1.05.09;Gewässeranbindung (z. B. Altwasser);1.05.09 Gewässeranbindung (z. B. Altwasser);0;0;1;0;0
  15;1.05.10;Förderung einer erhöhten Fließgewässerdynamik/Schaffung von Strukturen;1.05.10 Förderung einer erhöhten Fließgewässerdynamik/Schaffung von Strukturen;1;0;0;1;1
  16;1.06.01;Anlage/Optimierung von Nistplätzen/-hilfen (Horste, Nist- und Quartierkästen, Brutinseln);1.06.01 Anlage/Optimierung von Nistplätzen/-hilfen (Horste, Nist- und Quartierkästen, Brutinseln);1;1;1;1;1
  17;1.06.02;Anlage/Optimierung von Versteckplätzen/Hangplätzen, einschließlich Wärmekammern;1.06.02 Anlage/Optimierung von Versteckplätzen/Hangplätzen, einschließlich Wärmekammern;1;1;0;0;0
  18;1.06.03;Verdunklungsmaßnahmen in Dachräumen;1.06.03 Verdunklungsmaßnahmen in Dachräumen;0;1;0;0;0
  19;1.06.04;Herrichtung und Bereitstellung von Gebäudeteilen (z. B. Dachräume);1.06.04 Herrichtung und Bereitstellung von Gebäudeteilen (z. B. Dachräume);0;1;0;0;0
  20;1.06.05;Vergitterung (Fledermaus-Winterquartiere);1.06.05 Vergitterung (Fledermaus-Winterquartiere);0;1;0;0;0
  21;1.06.06;Schaffung/Sicherung von Einflug-/Einschlupföffnungen;1.06.06 Schaffung/Sicherung von Einflug-/Einschlupföffnungen;0;1;0;0;0
  22;1.06.07;Verhindern des Eindringens von Tauben;1.06.07 Verhindern des Eindringens von Tauben;0;1;0;0;0
  23;1.06.08;Vermauern von Fenster-/Türöffnungen (Verhinderung Vandalismus);1.06.08 Vermauern von Fenster-/Türöffnungen (Verhinderung Vandalismus);0;1;0;0;0
  24;1.06.09;Sicherung Zugang durch vandalismussichere Tür;1.06.09 Sicherung Zugang durch vandalismussichere Tür;0;1;0;0;0
  25;1.06.10;Abwehr von Prädatoren (z. B. Manschetten an Nistplätzen);1.06.10 Abwehr von Prädatoren (z. B. Manschetten an Nistplätzen);1;1;0;0;0
  26;1.07.01;Beseitigung/Rückbau von baulichen Anlagen (Wege, Brücken, Tunnel etc.);1.07.01 Beseitigung/Rückbau von baulichen Anlagen (Wege, Brücken, Tunnel etc.);1;0;1;1;1
  27;1.07.02;Anlage von Steilwänden/Bodenabbrüchen;1.07.02 Anlage von Steilwänden/Bodenabbrüchen;0;1;1;1;0
  28;1.07.03;Ansitzwarten für Vögel;1.07.03 Ansitzwarten für Vögel;0;1;0;0;1
  29;1.08.01;Minimierung des Sedimenteintrages unspezifiziert;1.08.01 Minimierung des Sedimenteintrages unspezifiziert;1;0;1;1;1
  30;1.08.02;unbewirtschafteter Gewässerrandstreifen;1.08.02 unbewirtschafteter Gewässerrandstreifen;0;0;1;1;0
  31;1.08.03;Bodenschonender Ackerbau;1.08.03 Bodenschonender Ackerbau;0;0;1;1;1
  32;1.08.04;Umwandlung Acker in Grünland;1.08.04 Umwandlung Acker in Grünland;0;0;1;1;1
  33;1.08.06;morphologische Veränderung von Eintragsbahnen (Verlegung, Rückstaue);1.08.06 morphologische Veränderung von Eintragsbahnen (Verlegung, Rückstaue);0;1;0;0;0
  34;1.08.07;Anlage von Pufferstreifen/-flächen ;1.08.07 Anlage von Pufferstreifen/-flächen ;1;0;1;1;1
  35;1.09;Unterbinden von Einleitungen;1.09 Unterbinden von Einleitungen;0;0;1;1;0
  36;1.10;Abwasserklärung im Einzugsgebiet;1.10 Abwasserklärung im Einzugsgebiet;0;0;1;1;0
  37;1.11;Verminderung der Grundwasserentnahme;1.11 Verminderung der Grundwasserentnahme;0;0;1;1;1
  38;1.12;Sicherung einer Mindestwassermenge in Ausleitungsstrecken;1.12 Sicherung einer Mindestwassermenge in Ausleitungsstrecken;0;0;0;1;0
  39;1.13;Beseitigung von Viehtränken;1.13 Beseitigung von Viehtränken;0;0;1;1;1
  40;1.14;Auszäunung sensibler Bereiche bzw. der LRT-Fläche;1.14 Auszäunung sensibler Bereiche bzw. der LRT-Fläche;0;0;1;1;1
  41;1.15;Reduzierung des (Schwarz-)Wildbestandes;1.15 Reduzierung des (Schwarz-)Wildbestandes;1;0;1;0;1
  42;1.16;Horstschutzzone;1.16 Horstschutzzone;1;0;1;0;0
  43;1.17;Verlagerung jagdlicher Einrichtungen;1.17 Verlagerung jagdlicher Einrichtungen;1;0;0;0;1
  44;1.18;Wegsperrung;1.18 Wegsperrung;1;1;1;1;1
  45;1.19;Bewachung;1.19 Bewachung;1;0;1;0;0
  46;1.20;Sonstige Verminderung von Beeinträchtigungen (bitte erläutern);1.20 Sonstige Verminderung von Beeinträchtigungen (bitte erläutern);1;1;1;1;1
  47;2.01.01;Belassen von Brach- und Saumstreifen;2.01.01 Belassen von Brach- und Saumstreifen;0;0;0;0;1
  48;2.01.02;Pferchen außerhalb der Fläche oder hangabwärts;2.01.02 Pferchen außerhalb der Fläche oder hangabwärts;0;0;0;0;1
  49;2.01.03;Anpassung der Besatzdichte (bitte erläutern);2.01.03 Anpassung der Besatzdichte (bitte erläutern);0;0;0;0;1
  50;2.01.04;Hoch angesetzter Grasschnitt (i. d. R. ≥7 cm);2.01.04 Hoch angesetzter Grasschnitt (i. d. R. ≥7 cm);0;0;0;0;1
  51;2.01.05;Aushagerung (zeitweilig erhöhte Schnitthäufigkeit/Beweidungsintensität ohne Düngung);2.01.05 Aushagerung (zeitweilig erhöhte Schnitthäufigkeit/Beweidungsintensität ohne Düngung);0;0;0;0;1
  52;2.01.06 ;Mahdgutübertragung;2.01.06  Mahdgutübertragung;0;0;0;0;1
  53;2.01.07;Belassen des Mahdgutes auf der Fläche für mehrere Tage;2.01.07 Belassen des Mahdgutes auf der Fläche für mehrere Tage;0;0;0;0;1
  54;2.01.08;Keine dauerhafte Mahdgutablagerung auf oder im Umfeld der Fläche;2.01.08 Keine dauerhafte Mahdgutablagerung auf oder im Umfeld der Fläche;0;0;0;1;1
  55;2.01.09;Einsatz bodenschonender Technik;2.01.09 Einsatz bodenschonender Technik;0;0;0;0;1
  56;2.01.10;Verwendung tierschonender Mahdtechnik;2.01.10 Verwendung tierschonender Mahdtechnik;0;0;0;0;1
  57;2.01.11;Schaffung kleinflächiger vegetationsoffener Bereiche;2.01.11 Schaffung kleinflächiger vegetationsoffener Bereiche;0;0;0;0;1
  58;2.01.12;Plaggen/flächiges Abschieben von Oberboden;2.01.12 Plaggen/flächiges Abschieben von Oberboden;0;0;0;0;1
  59;2.01.13;Kontrolliertes Brennen/Flämmen;2.01.13 Kontrolliertes Brennen/Flämmen;0;0;0;0;1
  60;2.01.14;Mahd mit Kleintechnik;2.01.14 Mahd mit Kleintechnik;0;0;0;0;1
  61;2.01.14.01;Handmahd (Sense, Freischneider…);2.01.14.01 Handmahd (Sense, Freischneider…);0;0;0;0;1
  62;2.01.14.02;Mahd mit Einachsmäher/handgeführtem Balkenmäher;2.01.14.02 Mahd mit Einachsmäher/handgeführtem Balkenmäher;0;0;0;0;1
  63;2.01.15.01;Mahd, Nachbeweidung möglich;2.01.15.01 Mahd, Nachbeweidung möglich;0;0;0;0;1
  64;2.01.15.02;Mahd ohne Nachbeweidung;2.01.15.02 Mahd ohne Nachbeweidung;0;0;0;0;1
  65;2.01.15.03;Beweidung;2.01.15.03 Beweidung;0;0;0;0;1
  66;2.01.15.04;Alternativ Mahd und/oder Beweidung;2.01.15.04 Alternativ Mahd und/oder Beweidung;0;0;0;0;1
  67;2.01.15.05;Keine regelmäßige Nutzung/Pflege;2.01.15.05 Keine regelmäßige Nutzung/Pflege;0;0;0;0;1
  68;2.01.16.01;Staffelmahd/Mahd nur in Teilbereichen (bitte erläutern);2.01.16.01 Staffelmahd/Mahd nur in Teilbereichen (bitte erläutern);0;0;0;0;1
  69;2.01.16.02;Selektive Mahd (bitte erläutern);2.01.16.02 Selektive Mahd (bitte erläutern);0;0;0;0;1
  70;2.01.16.03;Nutzungspause (> 6-8 Wochen);2.01.16.03 Nutzungspause (> 6-8 Wochen);0;0;0;0;1
  71;2.01.16.04;Nutzungspause (ca. 12 Wochen);2.01.16.04 Nutzungspause (ca. 12 Wochen);0;0;0;0;1
  72;2.01.16.05;spezielle Mahdmuster (z. B. von innen nach außen; bitte erläutern);2.01.16.05 spezielle Mahdmuster (z. B. von innen nach außen; bitte erläutern);0;0;0;0;1
  73;2.01.16.06;Keine Vorgabe zur Form der Mahd;2.01.16.06 Keine Vorgabe zur Form der Mahd;0;0;0;0;1
  74;2.01.16.07;Nutzungspause (ca. 15 Wochen);2.01.16.07 Nutzungspause (ca. 15 Wochen);0;0;0;0;1
  75;2.01.22.01;1-schürig;2.01.22.01 1-schürig;0;0;0;0;1
  76;2.01.22.02;1- bis 2-schürig;2.01.22.02 1- bis 2-schürig;0;0;0;0;1
  77;2.01.22.03;2-schürig;2.01.22.03 2-schürig;0;0;0;0;1
  78;2.01.22.04;2- bis 3-schürig;2.01.22.04 2- bis 3-schürig;0;0;0;0;1
  79;2.01.22.05;3-schürig;2.01.22.05 3-schürig;0;0;0;0;1
  80;2.01.22.06;Mahd alle 1 bis 3 Jahre;2.01.22.06 Mahd alle 1 bis 3 Jahre;0;0;0;0;1
  81;2.01.22.07;Mahd bei Bedarf in mehrjährigen Abständen;2.01.22.07 Mahd bei Bedarf in mehrjährigen Abständen;0;0;0;0;1
  82;2.01.17.01;Nur Schafe/Ziegen;2.01.17.01 Nur Schafe/Ziegen;0;0;0;0;1
  83;2.01.17.04;Nur Rinder/Schafe/Ziegen;2.01.17.04 Nur Rinder/Schafe/Ziegen;0;0;0;0;1
  84;2.01.17.02;Andere Beschränkung Weidevieh (bitte erläutern);2.01.17.02 Andere Beschränkung Weidevieh (bitte erläutern);0;0;0;0;1
  85;2.01.17.03;Keine Vorgabe zu Weidetierarten;2.01.17.03 Keine Vorgabe zu Weidetierarten;0;0;0;0;1
  86;2.01.17.05;Vorgaben zur Art der Weidetierhaltung (Stand-, Hüte-, Umtriebs-, Triftweide);2.01.17.05 Vorgaben zur Art der Weidetierhaltung (Stand-, Hüte-, Umtriebs-, Triftweide);0;0;0;0;1
  87;2.01.18.01;Erster Nutzungstermin bis Ende Mai;2.01.18.01 Erster Nutzungstermin bis Ende Mai;0;0;0;0;1
  88;2.01.18.02;Frühester Nutzungstermin ab 1. Juni;2.01.18.02 Frühester Nutzungstermin ab 1. Juni;0;0;0;0;1
  89;2.01.18.03;Frühester Nutzungstermin ab 15. Juni;2.01.18.03 Frühester Nutzungstermin ab 15. Juni;0;0;0;0;1
  90;2.01.18.04;Frühester Nutzungstermin ab 1. Juli;2.01.18.04 Frühester Nutzungstermin ab 1. Juli;0;0;0;0;1
  91;2.01.18.05;Frühester Nutzungstermin ab 15. Juli;2.01.18.05 Frühester Nutzungstermin ab 15. Juli;0;0;0;0;1
  92;2.01.18.06;Frühester Nutzungstermin ab 1. August;2.01.18.06 Frühester Nutzungstermin ab 1. August;0;0;0;0;1
  93;2.01.18.07;Frühester Nutzungstermin ab 1. September;2.01.18.07 Frühester Nutzungstermin ab 1. September;0;0;0;0;1
  94;2.01.18.08 ;Wintermahd;2.01.18.08  Wintermahd;0;0;0;0;1
  95;2.01.18.09;Keine Vorgabe zum frühesten Nutzungs-/Pflegetermin;2.01.18.09 Keine Vorgabe zum frühesten Nutzungs-/Pflegetermin;0;0;0;0;1
  96;2.01.18.12;sonstige Vorgaben zum frühesten Nutzungstermin (bitte erläutern);2.01.18.12 sonstige Vorgaben zum frühesten Nutzungstermin (bitte erläutern);0;0;0;0;1
  97;2.01.19.01;Keine N-Düngung;2.01.19.01 Keine N-Düngung;0;0;0;0;1
  98;2.01.19.03;N-Düngung maximal in Höhe des Entzugs;2.01.19.03 N-Düngung maximal in Höhe des Entzugs;0;0;0;0;1
  99;2.01.19.04;Keine Vorgabe zur N-Düngung;2.01.19.04 Keine Vorgabe zur N-Düngung;0;0;0;0;1
  100;2.01.20.01;Keine Grunddüngung;2.01.20.01 Keine Grunddüngung;0;0;0;0;1
  101;2.01.20.03;Grunddüngung maximal in Höhe des Entzugs;2.01.20.03 Grunddüngung maximal in Höhe des Entzugs;0;0;0;0;1
  102;2.01.20.04;Keine Vorgabe zur Grunddüngung;2.01.20.04 Keine Vorgabe zur Grunddüngung;0;0;0;0;1
  103;2.01.21.01;Keine Grünlandkalkung;2.01.21.01 Keine Grünlandkalkung;0;0;0;0;1
  104;2.01.21.02;Vorgaben zur Grünlandkalkung (bitte erläutern);2.01.21.02 Vorgaben zur Grünlandkalkung (bitte erläutern);0;0;0;0;1
  105;2.01.21.03;Keine Vorgabe zur Grünlandkalkung;2.01.21.03 Keine Vorgabe zur Grünlandkalkung;0;0;0;0;1
  106;2.02.01;Gehölzpflanzung mit standortheimischen Arten;2.02.01 Gehölzpflanzung mit standortheimischen Arten;0;1;1;1;1
  107;2.02.02;Gehölzpflanzung nur lückig bzw. in kleineren Bereichen;2.02.02 Gehölzpflanzung nur lückig bzw. in kleineren Bereichen;0;1;0;1;0
  108;2.02.03;Einzelbaumpflanzung;2.02.03 Einzelbaumpflanzung;0;1;0;0;1
  109;2.02.04;Gehölzpflege (Heckenschnitt, Kopfweiden, Obstbäume etc.);2.02.04 Gehölzpflege (Heckenschnitt, Kopfweiden, Obstbäume etc.);0;1;1;1;1
  110;2.02.05;Gehölze in Anteilen unter 10% belassen;2.02.05 Gehölze in Anteilen unter 10% belassen;0;0;1;1;1
  111;2.02.06;sonstige Maßnahmen zu Gehölzstrukturen (bitte erläutern);2.02.06 sonstige Maßnahmen zu Gehölzstrukturen (bitte erläutern);0;0;1;1;1
  112;2.03.01.01;Mehrschichtigkeit aktiv erhalten;2.03.01.01 Mehrschichtigkeit aktiv erhalten;1;0;0;0;0
  113;2.03.01.02;Mehrschichtigkeit verbessern/entwickeln;2.03.01.02 Mehrschichtigkeit verbessern/entwickeln;1;0;0;0;0
  114;2.03.01.03;Vor-/Unterbau mit lebensraumtypischen Baumarten;2.03.01.03 Vor-/Unterbau mit lebensraumtypischen Baumarten;1;0;0;0;0
  115;2.03.01.04;Lebensraumtyp kleinflächig verjüngen;2.03.01.04 Lebensraumtyp kleinflächig verjüngen;1;0;0;0;0
  116;2.03.01.05;Plenterstruktur erhalten;2.03.01.05 Plenterstruktur erhalten;1;0;0;0;0
  117;2.03.01.06;Plenterstruktur verbessern/entwickeln;2.03.01.06 Plenterstruktur verbessern/entwickeln;1;0;0;0;0
  118;2.03.01.07;Auslichten dichter Gehölzbestände/Entfernung bestimmter Gehölze;2.03.01.07 Auslichten dichter Gehölzbestände/Entfernung bestimmter Gehölze;1;0;0;0;1
  119;2.03.01.08;Anlage/Erhalt von Lichtungen und Freiflächen im Wald;2.03.01.08 Anlage/Erhalt von Lichtungen und Freiflächen im Wald;1;0;0;0;1
  120;2.03.01.09;Mittelwaldartige Bewirtschaftung;2.03.01.09 Mittelwaldartige Bewirtschaftung;1;0;0;0;0
  121;2.03.01.10;Niederwaldartige Bewirtschaftung;2.03.01.10 Niederwaldartige Bewirtschaftung;1;0;0;0;0
  122;2.03.01.11;Anlage von Waldinnen- und Außenmänteln und –säumen;2.03.01.11 Anlage von Waldinnen- und Außenmänteln und –säumen;1;0;0;0;0
  123;2.03.01.12;Erntenutzungszeitraum verlängern;2.03.01.12 Erntenutzungszeitraum verlängern;1;0;0;0;0
  124;2.03.01.13;Fläche nicht bewirtschaften;2.03.01.13 Fläche nicht bewirtschaften;1;0;0;0;0
  125;2.03.01.14;Außerregelmäßige Bewirtschaftung (a. r. B.);2.03.01.14 Außerregelmäßige Bewirtschaftung (a. r. B.);1;0;0;0;0
  126;2.03.01.15;Belassen von Altholz ;2.03.01.15 Belassen von Altholz ;1;0;0;0;0
  127;2.03.01.16;Sonstige Maßnahmen zugunsten der Waldstruktur (bitte erläutern);2.03.01.16 Sonstige Maßnahmen zugunsten der Waldstruktur (bitte erläutern);1;0;0;0;0
  128;2.03.01.17;Maßnahmen zugunsten sonstiger Strukturmerkmale (bitte erläutern);2.03.01.17 Maßnahmen zugunsten sonstiger Strukturmerkmale (bitte erläutern);1;0;0;0;0
  129;2.03.02.01;Starkes stehendes und liegendes Totholz belassen (mind. 3 Stück/ha);2.03.02.01 Starkes stehendes und liegendes Totholz belassen (mind. 3 Stück/ha);1;0;0;0;0
  130;2.03.02.02;Starkes stehendes oder liegendes Totholz belassen (mind. 1 Stück/ha);2.03.02.02 Starkes stehendes oder liegendes Totholz belassen (mind. 1 Stück/ha);1;0;0;0;0
  131;2.03.02.03;Starkes stehendes und liegendes Totholz anreichern (mind. 3 Stück/ha);2.03.02.03 Starkes stehendes und liegendes Totholz anreichern (mind. 3 Stück/ha);1;0;0;0;0
  132;2.03.02.04;Starkes stehendes oder liegendes Totholz anreichern (mind. 1 Stück/ha);2.03.02.04 Starkes stehendes oder liegendes Totholz anreichern (mind. 1 Stück/ha);1;0;0;0;0
  133;2.03.02.05;Belassen von Totholz/Baumstubben;2.03.02.05 Belassen von Totholz/Baumstubben;1;0;1;1;1
  134;2.03.03.01;Biotopbäume belassen (mind. 12 Stück/ha, Artenschutz);2.03.03.01 Biotopbäume belassen (mind. 12 Stück/ha, Artenschutz);1;0;0;0;0
  135;2.03.03.02;Biotopbäume belassen (mind. 6 Stück/ha);2.03.03.02 Biotopbäume belassen (mind. 6 Stück/ha);1;0;0;0;0
  136;2.03.03.03;Biotopbäume belassen (mind. 3 Stück/ha);2.03.03.03 Biotopbäume belassen (mind. 3 Stück/ha);1;0;0;0;0
  137;2.03.03.04;Biotopbäume anreichern (mind. 12 Stück/ha, Artenschutz);2.03.03.04 Biotopbäume anreichern (mind. 12 Stück/ha, Artenschutz);1;0;0;0;0
  138;2.03.03.05;Biotopbäume anreichern (mind. 6 Stück/ha);2.03.03.05 Biotopbäume anreichern (mind. 6 Stück/ha);1;0;0;0;0
  139;2.03.03.06;Biotopbäume anreichern (mind. 3 Stück/ha);2.03.03.06 Biotopbäume anreichern (mind. 3 Stück/ha);1;0;0;0;0
  140;2.03.03.07;Belassen von Horst- und Höhlenbäumen;2.03.03.07 Belassen von Horst- und Höhlenbäumen;1;0;0;0;0
  141;2.03.04.01;Anteil der lebensraumtypischen Hauptbaumarten aktiv erhalten (A-Status);2.03.04.01 Anteil der lebensraumtypischen Hauptbaumarten aktiv erhalten (A-Status);1;0;0;0;0
  142;2.03.04.02;Anteil der lebensraumtypischen Hauptbaumarten aktiv erhalten (B-Status);2.03.04.02 Anteil der lebensraumtypischen Hauptbaumarten aktiv erhalten (B-Status);1;0;0;0;0
  143;2.03.04.03;Anteil der lebensraumtypischen Nebenbaumarten aktiv erhalten (A-Status);2.03.04.03 Anteil der lebensraumtypischen Nebenbaumarten aktiv erhalten (A-Status);1;0;0;0;0
  144;2.03.04.04;Anteil der lebensraumtypischen Nebenbaumarten aktiv erhalten (B-Status);2.03.04.04 Anteil der lebensraumtypischen Nebenbaumarten aktiv erhalten (B-Status);1;0;0;0;0
  145;2.03.04.05;Anteil lebensraumtypischer Hauptbaumarten erhöhen;2.03.04.05 Anteil lebensraumtypischer Hauptbaumarten erhöhen;1;0;0;0;0
  146;2.03.04.06;Anteil lebensraumtypischer Nebenbaumarten erhöhen;2.03.04.06 Anteil lebensraumtypischer Nebenbaumarten erhöhen;1;0;0;0;0
  147;2.03.04.07;Naturverjüngung lebensraumtypischer Baumarten fördern;2.03.04.07 Naturverjüngung lebensraumtypischer Baumarten fördern;1;0;0;0;0
  148;2.03.04.08;Lebensraumtyp durch Pflanzung oder Saat verjüngen;2.03.04.08 Lebensraumtyp durch Pflanzung oder Saat verjüngen;1;0;0;0;0
  149;2.03.04.09;Gesellschaftsfremden Baumartenanteil bei Hiebsreife reduzieren;2.03.04.09 Gesellschaftsfremden Baumartenanteil bei Hiebsreife reduzieren;1;0;0;0;0
  150;2.03.04.10;Gesellschaftsfremden Baumartenanteil vor der Hiebsreife reduzieren;2.03.04.10 Gesellschaftsfremden Baumartenanteil vor der Hiebsreife reduzieren;1;0;0;0;0
  151;2.03.04.11;Verjüngung gesellschaftsfremder Gehölze reduzieren;2.03.04.11 Verjüngung gesellschaftsfremder Gehölze reduzieren;1;0;0;0;0
  152;2.03.04.12;Sonstige Maßn. zugunsten des lebensraumtyp. Baumarteninventars (bitte erläutern);2.03.04.12 Sonstige Maßn. zugunsten des lebensraumtyp. Baumarteninventars (bitte erläutern);1;0;0;0;0
  153;2.03.04.13;Förderung bestimmter Baumarten (bitte erläutern);2.03.04.13 Förderung bestimmter Baumarten (bitte erläutern);1;0;0;0;0
  154;2.03.05.01;Untypische Dominanzen in der Bodenvegetation regulieren;2.03.05.01 Untypische Dominanzen in der Bodenvegetation regulieren;1;0;0;0;0
  155;2.03.05.02;Sonstige Maßn. zugunsten der lebensraumtyp. Bodenvegetation (bitte erläutern);2.03.05.02 Sonstige Maßn. zugunsten der lebensraumtyp. Bodenvegetation (bitte erläutern);1;0;0;0;0
  156;2.03.06.01;Keine Befahrung;2.03.06.01 Keine Befahrung;1;0;0;0;0
  157;2.03.06.02;Befahrung nur auf permanenten Rückegassen;2.03.06.02 Befahrung nur auf permanenten Rückegassen;1;0;0;0;0
  158;2.03.06.03;Befahrung nur in Trockenperioden oder bei Dauerfrost;2.03.06.03 Befahrung nur in Trockenperioden oder bei Dauerfrost;1;0;0;0;0
  159;2.03.06.04;Bodenschonende Rückeverfahren anwenden;2.03.06.04 Bodenschonende Rückeverfahren anwenden;1;0;0;0;0
  160;2.03.06.05;Holz mit Seilkran rücken;2.03.06.05 Holz mit Seilkran rücken;1;0;0;0;0
  161;2.03.06.06;Torfabbau/Materialentnahme einstellen;2.03.06.06 Torfabbau/Materialentnahme einstellen;1;0;1;0;1
  162;2.03.06.07;Sonstige Maßnahmen zugunsten der Bodenstruktur (bitte erläutern);2.03.06.07 Sonstige Maßnahmen zugunsten der Bodenstruktur (bitte erläutern);1;0;0;0;0
  163;2.03.07.01;Eutrophierung reduzieren/einstellen;2.03.07.01 Eutrophierung reduzieren/einstellen;1;0;0;0;0
  164;2.03.07.02;Auf Kalkung verzichten;2.03.07.02 Auf Kalkung verzichten;1;0;0;0;0
  165;2.03.07.03;Kompensationskalkung durchführen;2.03.07.03 Kompensationskalkung durchführen;1;0;0;0;0
  166;2.03.07.04;Organische Ablagerungen beseitigen;2.03.07.04 Organische Ablagerungen beseitigen;1;0;0;0;0
  167;2.03.07.05;Müll/anorganische Ablagerungen beseitigen;2.03.07.05 Müll/anorganische Ablagerungen beseitigen;1;0;0;0;0
  168;2.03.07.06;Schadstoffimmission reduzieren;2.03.07.06 Schadstoffimmission reduzieren;1;0;0;0;0
  169;2.03.07.07;Sonstige Maßnahmen zugunsten des Stoffhaushaltes (bitte erläutern);2.03.07.07 Sonstige Maßnahmen zugunsten des Stoffhaushaltes (bitte erläutern);1;0;0;0;0
  170;2.03.08.01;Entwässerungsgräben nicht wieder instand setzen;2.03.08.01 Entwässerungsgräben nicht wieder instand setzen;1;0;0;0;1
  171;2.03.08.02;Entwässerungsgräben schließen;2.03.08.02 Entwässerungsgräben schließen;1;0;0;0;1
  172;2.03.08.03;(Wieder-)Vernässung zulassen;2.03.08.03 (Wieder-)Vernässung zulassen;1;0;0;0;1
  173;2.03.08.04;Lebensraumuntypische Vernässung reduzieren/einstellen;2.03.08.04 Lebensraumuntypische Vernässung reduzieren/einstellen;1;0;0;0;1
  174;2.03.08.05;Maßnahmen in der hydrologischen Schutzzone;2.03.08.05 Maßnahmen in der hydrologischen Schutzzone;1;0;0;0;1
  175;2.03.08.06;Sonstige Maßnahmen zugunsten des Wasserhaushaltes (bitte erläutern);2.03.08.06 Sonstige Maßnahmen zugunsten des Wasserhaushaltes (bitte erläutern);1;0;0;0;1
  176;2.03.08.07;aktuell keine Maßnahmen zugunsten des Wasserhaushaltes erforderlich;2.03.08.07 aktuell keine Maßnahmen zugunsten des Wasserhaushaltes erforderlich;0;0;0;0;1
  177;2.03.08.08;hydrologisches Gutachten erforderlich;2.03.08.08 hydrologisches Gutachten erforderlich;1;0;1;0;1
  178;2.03.09.01;Verbissbelastung reduzieren;2.03.09.01 Verbissbelastung reduzieren;1;0;0;0;0
  179;2.03.09.02;Schälschäden reduzieren;2.03.09.02 Schälschäden reduzieren;1;0;0;0;0
  180;2.03.09.03;Zäunung zum Schutz der Verjüngung;2.03.09.03 Zäunung zum Schutz der Verjüngung;1;0;0;0;0
  181;2.03.09.04;Sonstige Maßnahmen zur Verringerung/Beseitigung von Schäden an der Vegetationsstruktur (bitte erläutern);2.03.09.04 Sonstige Maßnahmen zur Verringerung/Beseitigung von Schäden an der Vegetationsstruktur (bitte erläutern);1;0;0;0;0
  182;2.03.10.01;Lärmimmission reduzieren;2.03.10.01 Lärmimmission reduzieren;1;0;0;0;0
  183;2.03.10.02;Erholungsnutzung einschränken/einstellen;2.03.10.02 Erholungsnutzung einschränken/einstellen;1;0;0;0;0
  184;2.03.10.03;Rückbau von Wegen;2.03.10.03 Rückbau von Wegen;1;0;0;0;0
  185;2.03.10.04;Sonstige Maßnahmen zur Verringerung/Beseitigung von Störungen (bitte erläutern);2.03.10.04 Sonstige Maßnahmen zur Verringerung/Beseitigung von Störungen (bitte erläutern);1;0;0;0;0
  186;2.03.11;Rodung/Umwandlung von Wald in eine andere Nutzungsart;2.03.11 Rodung/Umwandlung von Wald in eine andere Nutzungsart;1;0;0;0;1
  187;2.03.12;Entwicklung zusätzlicher LRT-Flächen (bitte erläutern);2.03.12 Entwicklung zusätzlicher LRT-Flächen (bitte erläutern);1;0;0;0;0
  188;2.03.13;naturnahe Waldbewirtschaftung/Walderhaltung;2.03.13 naturnahe Waldbewirtschaftung/Walderhaltung;1;0;0;0;0
  189;2.03.14;besondere Aufmerksamkeit, um seltenen A-Zustand zu erhalten - erhöhte Anforderungen berücksichtigen;2.03.14 besondere Aufmerksamkeit, um seltenen A-Zustand zu erhalten - erhöhte Anforderungen berücksichtigen;1;0;0;0;0
  190;2.03.15;besondere Aufmerksamkeit, damit sich der ungünstige Zustand nicht noch weiter verschlechtert - ein günstiger Zustand soll möglichst hergestellt werden;2.03.15 besondere Aufmerksamkeit, damit sich der ungünstige Zustand nicht noch weiter verschlechtert - ein günstiger Zustand soll möglichst hergestellt werden;1;0;0;0;0
  191;2.04.01;Schonung/Förderung der Wildfischbestände;2.04.01 Schonung/Förderung der Wildfischbestände;0;0;1;0;0
  192;2.04.02;Anlage von Fischschonbezirken ;2.04.02 Anlage von Fischschonbezirken ;0;0;1;1;0
  193;2.04.03;Traditionelle Bewirtschaftung als Fischteich;2.04.03 Traditionelle Bewirtschaftung als Fischteich;0;0;1;0;0
  194;2.04.04;Wasserstandsregulierung;2.04.04 Wasserstandsregulierung;0;0;1;0;1
  195;2.04.05;Trockenlegung im Winter;2.04.05 Trockenlegung im Winter;0;0;1;0;0
  196;2.04.06;Trockenlegung im Sommer/Herbst (Sömmerung);2.04.06 Trockenlegung im Sommer/Herbst (Sömmerung);0;0;1;0;0
  197;2.04.07;Instandhaltung von Stauanlagen;2.04.07 Instandhaltung von Stauanlagen;0;0;1;0;0
  198;2.04.08;Neuanlage von Gewässern;2.04.08 Neuanlage von Gewässern;0;0;1;0;0
  199;2.04.09;Schaffung zusätzlicher Uferstrukturen/Flachwasserzonen;2.04.09 Schaffung zusätzlicher Uferstrukturen/Flachwasserzonen;0;0;1;1;0
  200;2.04.10;Anlage/Unterhaltung von Nahrungsteichen, Mehrbesatz;2.04.10 Anlage/Unterhaltung von Nahrungsteichen, Mehrbesatz;0;0;1;0;0
  201;2.04.11;Erhalt von Uferstrukturen/Flachwasserzonen;2.04.11 Erhalt von Uferstrukturen/Flachwasserzonen;0;0;1;1;0
  202;2.04.12.01;sofortiger Wiederanstau/Winterbespannung;2.04.12.01 sofortiger Wiederanstau/Winterbespannung;0;0;1;0;0
  203;2.04.12.02;Bespannung spätestens am 1. März;2.04.12.02 Bespannung spätestens am 1. März;0;0;1;0;0
  204;2.04.12.03;mehrjähriger Ablassrhythmus;2.04.12.03 mehrjähriger Ablassrhythmus;0;0;1;0;0
  205;2.04.12.04;ganzjährige Bespannung;2.04.12.04 ganzjährige Bespannung;0;0;1;0;0
  206;2.04.12.05;sonstige Vorgaben zur Bespannung (bitte erläutern);2.04.12.05 sonstige Vorgaben zur Bespannung (bitte erläutern);0;0;1;0;0
  207;2.04.12.06;keine Bespannungsvorgabe;2.04.12.06 keine Bespannungsvorgabe;0;0;1;0;0
  208;2.04.12.07;mind. 6-wöchige Trockenlegung von Teilbereichen im Sommer oder Herbst;2.04.12.07 mind. 6-wöchige Trockenlegung von Teilbereichen im Sommer oder Herbst;0;0;1;0;0
  209;2.04.13;Abfischen ohne Neubesatz;2.04.13 Abfischen ohne Neubesatz;0;0;1;0;0
  210;2.04.14;Erhalt und Förderung lebensraumtypischer Unterwasser- und Schwimmblattvegetation;2.04.14 Erhalt und Förderung lebensraumtypischer Unterwasser- und Schwimmblattvegetation;0;0;1;0;0
  211;2.05.01;extensive Gewässerunterhaltungsmaßnahmen unspezifiziert;2.05.01 extensive Gewässerunterhaltungsmaßnahmen unspezifiziert;0;0;1;1;0
  212;2.05.02;Mahd am Gewässerufer ;2.05.02 Mahd am Gewässerufer ;0;0;1;1;0
  213;2.05.03;schonende Entkrautung;2.05.03 schonende Entkrautung;0;0;1;1;0
  214;2.05.04;schonender Schilfschnitt/Röhrichterhalt;2.05.04 schonender Schilfschnitt/Röhrichterhalt;0;0;1;0;0
  215;2.05.05;schonende Entlandung (Stillgewässer);2.05.05 schonende Entlandung (Stillgewässer);0;0;1;0;0
  216;2.05.06;schonende Grabenräumung/-pflege;2.05.06 schonende Grabenräumung/-pflege;0;0;1;1;0
  217;2.05.07;Unterhaltung abschnittsweise/in mehrjährigen Abständen ;2.05.07 Unterhaltung abschnittsweise/in mehrjährigen Abständen ;0;0;1;1;0
  218;2.06;Anlage von Schlenken;2.06 Anlage von Schlenken;0;0;0;0;1
  219;2.07;Schaffung stationärer Schutzanlagen;2.07 Schaffung stationärer Schutzanlagen;0;0;1;0;1
  220;2.08;Einsatz mobiler Schutzanlagen an Verkehrswegen;2.08 Einsatz mobiler Schutzanlagen an Verkehrswegen;0;0;1;0;1
  221;2.09.01;mehrjährige Ackerbrache;2.09.01 mehrjährige Ackerbrache;0;1;0;0;0
  222;2.09.02;Brachestreifen/Blühstreifen;2.09.02 Brachestreifen/Blühstreifen;0;1;0;0;0
  223;2.09.03;Ackerrandstreifen;2.09.03 Ackerrandstreifen;0;1;0;0;0
  224;2.09.04;spezielle Anbauverfahren (bitte erläutern);2.09.04 spezielle Anbauverfahren (bitte erläutern);0;1;0;0;0
  225;2.09.05;Vorgaben für die Fruchtfolge (bitte erläutern);2.09.05 Vorgaben für die Fruchtfolge (bitte erläutern);0;1;0;0;0
  226;2.09.06;Vorgaben zur Düngung (bitte erläutern);2.09.06 Vorgaben zur Düngung (bitte erläutern);0;1;0;0;0
  227;2.09.07;Vorgaben zum Einsatz von Pflanzenschutzmitteln (bitte erläutern);2.09.07 Vorgaben zum Einsatz von Pflanzenschutzmitteln (bitte erläutern);0;1;0;0;0
  228;2.09.08;punktuelle Maßnahmen im Acker (Kiebitzinseln, Feldlerchenfenster, Brutplatzschonung);2.09.08 punktuelle Maßnahmen im Acker (Kiebitzinseln, Feldlerchenfenster, Brutplatzschonung);0;1;0;0;0
  229;2.09.09;sonstige Ackerbauliche Maßnahmen (bitte erläutern);2.09.09 sonstige Ackerbauliche Maßnahmen (bitte erläutern);0;1;0;0;0
  230;2.10;Beachtung von Vorkommen gefährdeter Arten (bitte erläutern);2.10 Beachtung von Vorkommen gefährdeter Arten (bitte erläutern);1;1;1;1;1
  231;2.11;Sonstige Pflegehinweise (bitte erläutern);2.11 Sonstige Pflegehinweise (bitte erläutern);1;1;1;1;1
  232;3.01.01;Keine Neuansaat/Nachsaat;3.01.01 Keine Neuansaat/Nachsaat;0;0;0;0;1
  233;3.01.02;Keine Gehölzpflanzungen;3.01.02 Keine Gehölzpflanzungen;0;0;0;0;1
  234;3.01.03;Keine Pflanzung von Nadelhölzern im LRT-Umfeld;3.01.03 Keine Pflanzung von Nadelhölzern im LRT-Umfeld;0;0;0;0;1
  235;3.01.04;Kein Walzen/Schleppen im Sommerhalbjahr;3.01.04 Kein Walzen/Schleppen im Sommerhalbjahr;0;0;0;0;1
  236;3.01.05;Kein Einsatz von Gülle;3.01.05 Kein Einsatz von Gülle;0;0;0;0;1
  237;3.01.06;Keine Zufütterung bei Weidetieren;3.01.06 Keine Zufütterung bei Weidetieren;0;0;0;0;1
  238;3.01.07;Keine Pflanzung standortfremder Gehölze im LRT-Umfeld;3.01.07 Keine Pflanzung standortfremder Gehölze im LRT-Umfeld;0;0;0;0;1
  239;3.02.01;Rücknahme/Regulierung der fischereiwirtschaftlichen Nutzung;3.02.01 Rücknahme/Regulierung der fischereiwirtschaftlichen Nutzung;0;0;1;0;0
  240;3.02.02;kein Fischbesatz und keine fischereiwirtschaftliche Nutzung;3.02.02 kein Fischbesatz und keine fischereiwirtschaftliche Nutzung;0;0;1;1;0
  241;3.02.03;kein Besatz mit gebietsfremden Fischarten;3.02.03 kein Besatz mit gebietsfremden Fischarten;0;0;1;1;0
  242;3.02.04;keine Gewässerunterhaltung;3.02.04 keine Gewässerunterhaltung;0;0;0;1;0
  243;3.02.05;Keine Ablagerungen auf Kies- und Schlammbänken während der Vegetationszeit;3.02.05 Keine Ablagerungen auf Kies- und Schlammbänken während der Vegetationszeit;0;0;0;1;0
  244;3.02.06.01;keinerlei Fischbesatz;3.02.06.01 keinerlei Fischbesatz;0;0;1;0;0
  245;3.02.06.02;quantitative Ertrags- oder Besatzvorgabe (bitte erläutern);3.02.06.02 quantitative Ertrags- oder Besatzvorgabe (bitte erläutern);0;0;1;0;0
  246;3.02.06.03;keine Besatzvorgabe;3.02.06.03 keine Besatzvorgabe;0;0;1;0;0
  247;3.02.07.01;Beschränkung Graskarpfenbesatz (bitte erläutern);3.02.07.01 Beschränkung Graskarpfenbesatz (bitte erläutern);0;0;1;0;0
  248;3.02.07.02;Beschränkung Raubfischbesatz (bitte erläutern);3.02.07.02 Beschränkung Raubfischbesatz (bitte erläutern);0;0;1;0;0
  249;3.02.07.03;Beschränkung Graskarpfen- und Raubfischbesatz (bitte erläutern);3.02.07.03 Beschränkung Graskarpfen- und Raubfischbesatz (bitte erläutern);0;0;1;0;0
  250;3.02.07.04;Kein Graskarpfenbesatz;3.02.07.04 Kein Graskarpfenbesatz;0;0;1;0;0
  251;3.02.07.05;Kein Raubfischbesatz;3.02.07.05 Kein Raubfischbesatz;0;0;1;0;0
  252;3.02.07.06;Kein Graskarpfen- und Raubfischbesatz;3.02.07.06 Kein Graskarpfen- und Raubfischbesatz;0;0;1;0;0
  253;3.02.07.07;Keine Vorgabe zu Graskarpfen- und Raubfischbesatz;3.02.07.07 Keine Vorgabe zu Graskarpfen- und Raubfischbesatz;0;0;1;0;0
  254;3.02.07.08;sonstige Vorgaben zum Fischbesatz (bitte erläutern);3.02.07.08 sonstige Vorgaben zum Fischbesatz (bitte erläutern);0;0;1;0;0
  255;3.02.08.01;keine Teichdüngung;3.02.08.01 keine Teichdüngung;0;0;1;0;0
  256;3.02.08.02;Beschränkung Teichdüngung (bitte erläutern);3.02.08.02 Beschränkung Teichdüngung (bitte erläutern);0;0;1;0;0
  257;3.02.08.03;keine Vorgabe zur Teichdüngung;3.02.08.03 keine Vorgabe zur Teichdüngung;0;0;1;0;0
  258;3.02.09.01;keine Teichkalkung;3.02.09.01 keine Teichkalkung;0;0;1;0;0
  259;3.02.09.02;Beschränkung Teichkalkung (bitte erläutern);3.02.09.02 Beschränkung Teichkalkung (bitte erläutern);0;0;1;0;0
  260;3.02.09.03;keine Vorgabe zur Teichkalkung;3.02.09.03 keine Vorgabe zur Teichkalkung;0;0;1;0;0
  261;3.02.10.01;keine Zufütterung Teichwirtschaft/Naturnahrung;3.02.10.01 keine Zufütterung Teichwirtschaft/Naturnahrung;0;0;1;0;0
  262;3.02.10.02;nur angemessene Getreidefütterung;3.02.10.02 nur angemessene Getreidefütterung;0;0;1;0;0
  263;3.02.10.03;angemessene Getreide- oder Pelletfütterung/Mischfutter nur zur Konditionierung;3.02.10.03 angemessene Getreide- oder Pelletfütterung/Mischfutter nur zur Konditionierung;0;0;1;0;0
  264;3.02.10.04;sonstige Beschränkung Zufütterung Teichwirtschaft (bitte erläutern);3.02.10.04 sonstige Beschränkung Zufütterung Teichwirtschaft (bitte erläutern);0;0;1;0;0
  265;3.02.10.05;keine Vorgabe zur Zufütterung Teichwirtschaft;3.02.10.05 keine Vorgabe zur Zufütterung Teichwirtschaft;0;0;1;0;0
  266;3.03.01;Betretungsverbot;3.03.01 Betretungsverbot;0;1;1;0;1
  267;3.03.02;Besucherlenkung/Regelung der Freizeitnutzung (Sport, Zelten, Angeln, Bootfahren etc.);3.03.02 Besucherlenkung/Regelung der Freizeitnutzung (Sport, Zelten, Angeln, Bootfahren etc.);1;1;1;1;1
  268;3.03.03;Kein Einsatz von Pflanzenschutzmitteln;3.03.03 Kein Einsatz von Pflanzenschutzmitteln;0;0;0;0;1
  269;3.03.04;keine Kalkung im hydrologischen Einzugsgebiet;3.03.04 keine Kalkung im hydrologischen Einzugsgebiet;1;0;1;0;1
  270;3.03.05;Vorgaben zur Wege- und Teichdammpflege (bitte erläutern);3.03.05 Vorgaben zur Wege- und Teichdammpflege (bitte erläutern);0;0;1;0;0
  271;3.03.06;keine Beleuchtung von Gebäudeteilen (Fledermausschutz) ;3.03.06 keine Beleuchtung von Gebäudeteilen (Fledermausschutz) ;0;1;0;0;0
  272;3.03.07;kein Einsatz von Bioziden (Rodentizide, Insektizide etc.);3.03.07 kein Einsatz von Bioziden (Rodentizide, Insektizide etc.);1;1;1;0;1
  273;3.04;Sonstige Verbote/Unterlassungen (bitte erläutern);3.04 Sonstige Verbote/Unterlassungen (bitte erläutern);1;1;1;1;1
  274;4.01;Natürliche Sukzession/Teilbereiche ohne Bewirtschaftung;4.01 Natürliche Sukzession/Teilbereiche ohne Bewirtschaftung;0;1;1;1;1
  275;4.02.01;Ausweisung von Schutzgebieten unspezifiziert;4.02.01 Ausweisung von Schutzgebieten unspezifiziert;1;0;1;1;1
  276;4.02.02;Ausweisung/Erweiterung NSG;4.02.02 Ausweisung/Erweiterung NSG;1;0;1;1;1
  277;4.02.03;Ausweisung Naturdenkmal;4.02.03 Ausweisung Naturdenkmal;1;1;1;1;1
  278;4.02.04;Geschwindigkeitsbegrenzung;4.02.04 Geschwindigkeitsbegrenzung;1;1;0;0;1
  279;4.03;Bestandsstützende Maßnahmen/Vermehrungskultur;4.03 Bestandsstützende Maßnahmen/Vermehrungskultur;1;0;1;1;1
  280;4.04;Aufstellen von Informationstafeln;4.04 Aufstellen von Informationstafeln;1;1;1;1;1
  281;4.05;Beheizung Hufeisennasen-Quartiere;4.05 Beheizung Hufeisennasen-Quartiere;0;1;0;0;0
  282;4.06;weitere sonstige Maßnahmen (bitte erläutern);4.06 weitere sonstige Maßnahmen (bitte erläutern);1;1;1;1;1
  283;5;Maßnahmen zugunsten der lebensraumtypischen Fauna (bitte erläutern);5 Maßnahmen zugunsten der lebensraumtypischen Fauna (bitte erläutern);1;1;0;0;0
  284;6.01;allgemein: LRT-spezifische Behandlungsgrundsätze beachten;6.01 allgemein: LRT-spezifische Behandlungsgrundsätze beachten;1;0;0;0;0
  285;6.02;Standardmaßnahmen LRT 9110;6.02 Standardmaßnahmen LRT 9110;1;0;0;0;0
  286;6.03;Standardmaßnahmen LRT 9130;6.03 Standardmaßnahmen LRT 9130;1;0;0;0;0
  287;6.04;Standardmaßnahmen LRT 9160;6.04 Standardmaßnahmen LRT 9160;1;0;0;0;0
  288;6.05;Standardmaßnahmen LRT 9170;6.05 Standardmaßnahmen LRT 9170;1;0;0;0;0
  289;6.06;Standardmaßnahmen LRT 9180*;6.06 Standardmaßnahmen LRT 9180*;1;0;0;0;0
  290;6.07;Standardmaßnahmen LRT 9190;6.07 Standardmaßnahmen LRT 9190;1;0;0;0;0
  291;6.08;Standardmaßnahmen LRT 91D1*;6.08 Standardmaßnahmen LRT 91D1*;1;0;0;0;0
  292;6.09;Standardmaßnahmen LRT 91D2*;6.09 Standardmaßnahmen LRT 91D2*;1;0;0;0;0
  293;6.10;Standardmaßnahmen LRT 91D3*;6.10 Standardmaßnahmen LRT 91D3*;1;0;0;0;0
  294;6.11;Standardmaßnahmen LRT 91D4*;6.11 Standardmaßnahmen LRT 91D4*;1;0;0;0;0
  295;6.12;Standardmaßnahmen LRT 91E0*;6.12 Standardmaßnahmen LRT 91E0*;1;0;0;0;0
  296;6.13;Standardmaßnahmen LRT 91F0;6.13 Standardmaßnahmen LRT 91F0;1;0;0;0;0
  297;6.14;Standardmaßnahmen LRT 91G0*;6.14 Standardmaßnahmen LRT 91G0*;1;0;0;0;0
  298;6.15;Standardmaßnahmen LRT 91T0;6.15 Standardmaßnahmen LRT 91T0;1;0;0;0;0
  299;6.16;Standardmaßnahmen LRT 91U0;6.16 Standardmaßnahmen LRT 91U0;1;0;0;0;0
  300;6.17;Standardmaßnahmen LRT 9410;6.17 Standardmaßnahmen LRT 9410;1;0;0;0;0


referenz_pflege.csv
-------------------

 .. code-block:: bash

  id;name;nummer;beschreibung;identity
  1;Pflegenutzung fortsetzen (Bestandssicherung);null;null;PflegeArtComposite-20130409-1423-0
  2;Waldumbau;null;null;PflegeArtComposite-20130409-1434-1
  3;Gelegentliche Pflegemaßnahmen (Bestandssicherung);null;null;PflegeArtComposite-20130409-1433-0
  4;Pflegenutzung wiederaufnehmen (Bestandssicherung);null;null;PflegeArtComposite-20130409-1433-1
  5;Zulassen von natürlicher Sukzession;null;null;PflegeArtComposite-20130409-1434-0
  6;Entnahme von Fichten an Bachläufen und Feuchtstandorten;null;null;PflegeArtComposite-20130409-1436-1


referenz_stoerung.csv
---------------------

 .. code-block:: bash

  id;name;nummer;identity
  1;Ablagerung / Müll / Abfall;6;StoerungsArtComposite-20120413-2023-3556
  2;Umbruch;12;StoerungsArtComposite-20120413-2023-3562
  3;Abbau / Abgrabung;4;StoerungsArtComposite-20120413-2023-3554
  4;Gewässerverunreinigung;19;StoerungsArtComposite-20120413-2023-3569
  5;Abholzung / Rodung;11;StoerungsArtComposite-20120413-2023-3561
  6;Aufschüttung / Einebnung;5;StoerungsArtComposite-20120413-2023-3555
  7;Erosion;21;StoerungsArtComposite-20120413-2023-3571
  8;Immissionsschäden;20;StoerungsArtComposite-20120413-2023-3570
  9;Baumaßnahmen / Ausbau;2;StoerungsArtComposite-20120413-2023-3552
  10;Flächenverlust;22;StoerungsArtComposite-20120413-2023-3572
  11;Entwässerung;13;StoerungsArtComposite-20120413-2023-3563
  12;sonstige Ablagerung;7;StoerungsArtComposite-20120413-2023-3557
  13;Zerschneidung;23;StoerungsArtComposite-20120413-2023-3573
  14;Aufgabe der Nutzung;8;StoerungsArtComposite-20120413-2023-3558
  15;Verkehr;17;StoerungsArtComposite-20120413-2023-3567
  16;Freizeitaktivitäten;16;StoerungsArtComposite-20120413-2023-3566
  17;Intensivierung der Nutzung;9;StoerungsArtComposite-20120413-2023-3559
  18;Aufforstung / Bepflanzung;10;StoerungsArtComposite-20120413-2023-3560
  19;Biozideinsatz;15;StoerungsArtComposite-20120413-2023-3565
  20;Gewässerausbau;3;StoerungsArtComposite-20120413-2023-3553
  21;Eutrophierung;14;StoerungsArtComposite-20120413-2023-3564
  22;Schadstoffeintrag;18;StoerungsArtComposite-20120413-2023-3568
  23;keine Beeinträchtigung;1;StoerungsArtComposite-20120413-2023-3551
  24;sonstige Beeinträchtigung;24;StoerungsArtComposite-20120413-2023-3574
  25;Ausbreitung von Neophyten;25;StoerungsArtComposite-20130322-1123-0
  26;Landwirtschaft;26;StoerungsArtComposite-20130322-1124-0


..
 schutzstatus.csv
 ----------------

..
 .. code-block:: bash

..
  id;wert
  1;§ 30
  2;§ 21
  3;wertvoll
  4;21 / § 30

..
 erhaltungszustand.csv
 ---------------------
..
 .. code-block:: bash

..
  id;wert
  0;keine Angabe
  1;hervorragend
  2;gut
  3;mittel bis schlecht


