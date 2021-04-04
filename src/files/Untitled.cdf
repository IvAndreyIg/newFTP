(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[    120655,       2747]
NotebookOptionsPosition[    119866,       2698]
NotebookOutlinePosition[    120305,       2717]
CellTagsIndexPosition[    120262,       2714]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{"Graph", "[", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"UndirectedEdge", "[", 
     RowBox[{"1", ",", " ", "2"}], "]"}], ",", " ", 
    RowBox[{"UndirectedEdge", "[", 
     RowBox[{"3", ",", " ", "4"}], "]"}], ",", " ", 
    RowBox[{"UndirectedEdge", "[", 
     RowBox[{"2", ",", " ", "3"}], "]"}], ",", " ", 
    RowBox[{"UndirectedEdge", "[", 
     RowBox[{"2", ",", " ", "4"}], "]"}], ",", " ", 
    RowBox[{"UndirectedEdge", "[", 
     RowBox[{"1", ",", " ", "5"}], "]"}], ",", " ", 
    RowBox[{"UndirectedEdge", "[", 
     RowBox[{"4", ",", " ", "5"}], "]"}]}], "}"}], "]"}]], "Input"],

Cell[BoxData[
 GraphicsBox[
  NamespaceBox["NetworkGraphics",
   DynamicModuleBox[{Typeset`graph = HoldComplete[
     Graph[{1, 2, 3, 4, 5}, {
      Null, {{1, 2}, {3, 4}, {2, 3}, {2, 4}, {1, 5}, {4, 5}}}]]}, 
    TagBox[
     GraphicsGroupBox[
      GraphicsComplexBox[{{0., 0.}, {1.0817521509079628`, 
       0.03504525695780514}, {1.9461103305314436`, 0.4857441248929066}, {
       1.0831026628356137`, 0.9367885643029283}, {0.002954467824272, 
       0.9740909231880245}}, {
        {Hue[0.6, 0.7, 0.5], Opacity[0.7], 
         {Arrowheads[0.], ArrowBox[{1, 2}, 0.022172702496079916`]}, 
         {Arrowheads[0.], ArrowBox[{1, 5}, 0.022172702496079916`]}, 
         {Arrowheads[0.], ArrowBox[{2, 3}, 0.022172702496079916`]}, 
         {Arrowheads[0.], ArrowBox[{2, 4}, 0.022172702496079916`]}, 
         {Arrowheads[0.], ArrowBox[{3, 4}, 0.022172702496079916`]}, 
         {Arrowheads[0.], ArrowBox[{4, 5}, 0.022172702496079916`]}}, 
        {Hue[0.6, 0.2, 0.8], EdgeForm[{GrayLevel[0], Opacity[0.7]}], 
         DiskBox[1, 0.022172702496079916`], DiskBox[2, 0.022172702496079916`],
          DiskBox[3, 0.022172702496079916`], 
         DiskBox[4, 0.022172702496079916`], 
         DiskBox[5, 0.022172702496079916`]}}]],
     MouseAppearanceTag["NetworkGraphics"]],
    AllowKernelInitialization->False]],
  DefaultBaseStyle->{
   "NetworkGraphics", FrontEnd`GraphicsHighlightColor -> Hue[0.8, 1., 0.6]},
  FrameTicks->None,
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]]]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FindHamiltonianCycle", "[", 
  RowBox[{"Graph", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "1", ",", " ", "2", ",", " ", "3", ",", " ", "4", ",", " ", "5"}], "}"}],
     ",", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"UndirectedEdge", "[", 
       RowBox[{"1", ",", " ", "2"}], "]"}], ",", " ", 
      RowBox[{"UndirectedEdge", "[", 
       RowBox[{"3", ",", " ", "4"}], "]"}], ",", " ", 
      RowBox[{"UndirectedEdge", "[", 
       RowBox[{"2", ",", " ", "3"}], "]"}], ",", " ", 
      RowBox[{"UndirectedEdge", "[", 
       RowBox[{"2", ",", " ", "4"}], "]"}], ",", " ", 
      RowBox[{"UndirectedEdge", "[", 
       RowBox[{"1", ",", " ", "5"}], "]"}], ",", " ", 
      RowBox[{"UndirectedEdge", "[", 
       RowBox[{"4", ",", " ", "5"}], "]"}]}], "}"}]}], "]"}], "]"}]], "Input",
 NumberMarks->False],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"1", "\[UndirectedEdge]", "5"}], ",", 
    RowBox[{"5", "\[UndirectedEdge]", "4"}], ",", 
    RowBox[{"4", "\[UndirectedEdge]", "3"}], ",", 
    RowBox[{"3", "\[UndirectedEdge]", "2"}], ",", 
    RowBox[{"2", "\[UndirectedEdge]", "1"}]}], "}"}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"HighlightGraph", "[", 
   RowBox[{
    RowBox[{"Graph", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"1", ",", "2", ",", "3", ",", "4", ",", "5"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"Null", ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"1", ",", "2"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"3", ",", "4"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"2", ",", "3"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"2", ",", "4"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"1", ",", "5"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"4", ",", "5"}], "}"}]}], "}"}]}], "}"}]}], "]"}], ",", 
    RowBox[{"{", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"1", "\[UndirectedEdge]", "5"}], ",", 
       RowBox[{"5", "\[UndirectedEdge]", "4"}], ",", 
       RowBox[{"4", "\[UndirectedEdge]", "3"}], ",", 
       RowBox[{"3", "\[UndirectedEdge]", "2"}], ",", 
       RowBox[{"2", "\[UndirectedEdge]", "1"}]}], "}"}], "}"}]}], "]"}], "//", 
  RowBox[{
  "\:041f\:043e\:0438\:0441\:043a", " ", 
   "\:0433\:0430\:043c\:0438\:043b\:044c\:0442\:043e\:043d\:043e\:0432\:0430",
    " ", "\:0446\:0438\:043a\:043b\:0430"}]}]], "Input",
 NumberMarks->False],

Cell[BoxData[
 GraphicsBox[
  NamespaceBox["NetworkGraphics",
   DynamicModuleBox[{Typeset`graph = HoldComplete[
     Graph[{1, 2, 3, 4, 5}, {
      Null, {{1, 2}, {3, 4}, {2, 3}, {2, 4}, {1, 5}, {4, 5}}}, {
      GraphHighlight -> {
         UndirectedEdge[5, 4], 
         UndirectedEdge[2, 1], 
         UndirectedEdge[1, 5], 
         UndirectedEdge[3, 2], 
         UndirectedEdge[4, 3]}}]]}, 
    TagBox[
     GraphicsGroupBox[
      GraphicsComplexBox[{{0., 0.}, {1.0817521509079628`, 
       0.03504525695780514}, {1.9461103305314436`, 0.4857441248929066}, {
       1.0831026628356137`, 0.9367885643029283}, {0.002954467824272, 
       0.9740909231880245}}, {
        {Hue[0.6, 0.7, 0.5], Opacity[0.7], 
         {Hue[1, 1, 0.7], Opacity[1], 
          {Arrowheads[0.], 
           ArrowBox[{{0., 0.}, {1.0817521509079628`, 0.03504525695780514}}, 
            0.022172702496079916`]}}, 
         {Hue[1, 1, 0.7], Opacity[1], 
          {Arrowheads[0.], 
           ArrowBox[{{0., 0.}, {0.002954467824272, 0.9740909231880245}}, 
            0.022172702496079916`]}}, 
         {Hue[1, 1, 0.7], Opacity[1], 
          {Arrowheads[0.], 
           ArrowBox[{{1.0817521509079628`, 0.03504525695780514}, {
            1.9461103305314436`, 0.4857441248929066}}, 
            0.022172702496079916`]}}, 
         {Arrowheads[0.], 
          ArrowBox[{{1.0817521509079628`, 0.03504525695780514}, {
           1.0831026628356137`, 0.9367885643029283}}, 0.022172702496079916`]}, 
         {Hue[1, 1, 0.7], Opacity[1], 
          {Arrowheads[0.], 
           ArrowBox[{{1.9461103305314436`, 0.4857441248929066}, {
            1.0831026628356137`, 0.9367885643029283}}, 
            0.022172702496079916`]}}, 
         {Hue[1, 1, 0.7], Opacity[1], 
          {Arrowheads[0.], 
           ArrowBox[{{1.0831026628356137`, 0.9367885643029283}, {
            0.002954467824272, 0.9740909231880245}}, 
            0.022172702496079916`]}}}, 
        {Hue[0.6, 0.2, 0.8], EdgeForm[{GrayLevel[0], Opacity[0.7]}], 
         DiskBox[1, 0.022172702496079916`], DiskBox[2, 0.022172702496079916`],
          DiskBox[3, 0.022172702496079916`], 
         DiskBox[4, 0.022172702496079916`], 
         DiskBox[5, 0.022172702496079916`]}}]],
     MouseAppearanceTag["NetworkGraphics"]],
    AllowKernelInitialization->False]],
  DefaultBaseStyle->{
   "NetworkGraphics", FrontEnd`GraphicsHighlightColor -> Hue[0.8, 1., 0.6]},
  FrameTicks->None,
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]]]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"GraphDiameter", "[", 
   RowBox[{"Graph", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "1", ",", " ", "2", ",", " ", "3", ",", " ", "4", ",", " ", "5"}], 
      "}"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"UndirectedEdge", "[", 
        RowBox[{"1", ",", " ", "2"}], "]"}], ",", " ", 
       RowBox[{"UndirectedEdge", "[", 
        RowBox[{"3", ",", " ", "4"}], "]"}], ",", " ", 
       RowBox[{"UndirectedEdge", "[", 
        RowBox[{"2", ",", " ", "3"}], "]"}], ",", " ", 
       RowBox[{"UndirectedEdge", "[", 
        RowBox[{"2", ",", " ", "4"}], "]"}], ",", " ", 
       RowBox[{"UndirectedEdge", "[", 
        RowBox[{"1", ",", " ", "5"}], "]"}], ",", " ", 
       RowBox[{"UndirectedEdge", "[", 
        RowBox[{"4", ",", " ", "5"}], "]"}]}], "}"}]}], "]"}], "]"}], "//", 
  RowBox[{
  "\:0414\:0438\:0430\:043c\:0435\:0442\:0440", " ", 
   "\:0433\:0440\:0430\:0444\:0430"}]}]], "Input",
 NumberMarks->False],

Cell[BoxData["2"], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"FindShortestPath", "[", 
   RowBox[{
    RowBox[{"Graph", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "1", ",", " ", "2", ",", " ", "3", ",", " ", "4", ",", " ", "5"}], 
       "}"}], ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"UndirectedEdge", "[", 
         RowBox[{"1", ",", " ", "2"}], "]"}], ",", " ", 
        RowBox[{"UndirectedEdge", "[", 
         RowBox[{"3", ",", " ", "4"}], "]"}], ",", " ", 
        RowBox[{"UndirectedEdge", "[", 
         RowBox[{"2", ",", " ", "3"}], "]"}], ",", " ", 
        RowBox[{"UndirectedEdge", "[", 
         RowBox[{"2", ",", " ", "4"}], "]"}], ",", " ", 
        RowBox[{"UndirectedEdge", "[", 
         RowBox[{"1", ",", " ", "5"}], "]"}], ",", " ", 
        RowBox[{"UndirectedEdge", "[", 
         RowBox[{"4", ",", " ", "5"}], "]"}]}], "}"}]}], "]"}], ",", "1", ",",
     "5"}], "]"}], "//", 
  RowBox[{
  "\:041d\:0430\:0445\:043e\:0436\:0434\:0435\:043d\:0438\:0435", " ", 
   "\:043a\:0440\:0430\:0442\:0447\:0430\:0439\:0448\:0435\:0433\:043e", " ", 
   "\:043f\:0443\:0442\:0438", " ", "\:0438\:0437", " ", 
   "\:0442\:043e\:0447\:043a\:0438", " ", "1", " ", "\:0432", " ", 
   "5"}]}]], "Input",
 NumberMarks->False],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", "5"}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"HighlightGraph", "[", 
  RowBox[{
   RowBox[{"Graph", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"1", ",", "2", ",", "3", ",", "4", ",", "5"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"Null", ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"1", ",", "2"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"3", ",", "4"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"2", ",", "3"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"2", ",", "4"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"1", ",", "5"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"4", ",", "5"}], "}"}]}], "}"}]}], "}"}]}], "]"}], ",", 
   RowBox[{"PathGraph", "[", 
    RowBox[{"{", 
     RowBox[{"1", ",", "5"}], "}"}], "]"}]}], "]"}]], "Input",
 NumberMarks->False],

Cell[BoxData[
 GraphicsBox[
  NamespaceBox["NetworkGraphics",
   DynamicModuleBox[{Typeset`graph = HoldComplete[
     Graph[{1, 2, 3, 4, 5}, {
      Null, {{1, 2}, {3, 4}, {2, 3}, {2, 4}, {1, 5}, {4, 5}}}, {
      GraphHighlight -> {
         UndirectedEdge[1, 5], 1, 5}}]]}, 
    TagBox[
     GraphicsGroupBox[
      GraphicsComplexBox[{{0., 0.}, {1.0817521509079628`, 
       0.03504525695780514}, {1.9461103305314436`, 0.4857441248929066}, {
       1.0831026628356137`, 0.9367885643029283}, {0.002954467824272, 
       0.9740909231880245}}, {
        {Hue[0.6, 0.7, 0.5], Opacity[0.7], 
         {Arrowheads[0.], 
          ArrowBox[{{0., 0.}, {1.0817521509079628`, 0.03504525695780514}}, 
           0.022172702496079916`]}, 
         {Hue[1, 1, 0.7], Opacity[1], 
          {Arrowheads[0.], 
           ArrowBox[{{0., 0.}, {0.002954467824272, 0.9740909231880245}}, 
            0.022172702496079916`]}}, 
         {Arrowheads[0.], 
          ArrowBox[{{1.0817521509079628`, 0.03504525695780514}, {
           1.9461103305314436`, 0.4857441248929066}}, 0.022172702496079916`]}, 
         {Arrowheads[0.], 
          ArrowBox[{{1.0817521509079628`, 0.03504525695780514}, {
           1.0831026628356137`, 0.9367885643029283}}, 0.022172702496079916`]}, 
         {Arrowheads[0.], 
          ArrowBox[{{1.9461103305314436`, 0.4857441248929066}, {
           1.0831026628356137`, 0.9367885643029283}}, 0.022172702496079916`]}, 
         {Arrowheads[0.], 
          ArrowBox[{{1.0831026628356137`, 0.9367885643029283}, {
           0.002954467824272, 0.9740909231880245}}, 0.022172702496079916`]}}, 
        {Hue[0.6, 0.2, 0.8], EdgeForm[{GrayLevel[0], Opacity[0.7]}], 
         {Hue[1, 1, 0.7], EdgeForm[{Hue[1, 1, 0.7], Opacity[1]}], 
          DiskBox[1, 0.022172702496079916`]}, 
         DiskBox[2, 0.022172702496079916`], DiskBox[3, 0.022172702496079916`],
          DiskBox[4, 0.022172702496079916`], 
         {Hue[1, 1, 0.7], EdgeForm[{Hue[1, 1, 0.7], Opacity[1]}], 
          DiskBox[5, 0.022172702496079916`]}}}]],
     MouseAppearanceTag["NetworkGraphics"]],
    AllowKernelInitialization->False]],
  DefaultBaseStyle->{
   "NetworkGraphics", FrontEnd`GraphicsHighlightColor -> Hue[0.8, 1., 0.6]},
  FrameTicks->None,
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]]]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"GraphComplement", "[", 
   RowBox[{"Graph", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "1", ",", " ", "2", ",", " ", "3", ",", " ", "4", ",", " ", "5"}], 
      "}"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"UndirectedEdge", "[", 
        RowBox[{"1", ",", " ", "2"}], "]"}], ",", " ", 
       RowBox[{"UndirectedEdge", "[", 
        RowBox[{"3", ",", " ", "4"}], "]"}], ",", " ", 
       RowBox[{"UndirectedEdge", "[", 
        RowBox[{"2", ",", " ", "3"}], "]"}], ",", " ", 
       RowBox[{"UndirectedEdge", "[", 
        RowBox[{"2", ",", " ", "4"}], "]"}], ",", " ", 
       RowBox[{"UndirectedEdge", "[", 
        RowBox[{"1", ",", " ", "5"}], "]"}], ",", " ", 
       RowBox[{"UndirectedEdge", "[", 
        RowBox[{"4", ",", " ", "5"}], "]"}]}], "}"}]}], "]"}], "]"}], "//", 
  RowBox[{
  "\:0414\:043e\:043f\:043e\:043b\:043d\:0435\:0435\:043d\:0438\:0435", " ", 
   "\:0433\:0440\:0430\:0444\:0430"}]}]], "Input",
 NumberMarks->False],

Cell[BoxData[
 GraphicsBox[
  NamespaceBox["NetworkGraphics",
   DynamicModuleBox[{Typeset`graph = HoldComplete[
     Graph[{1, 2, 3, 4, 5}, {Null, 
       SparseArray[
       Automatic, {5, 5}, 0, {
        1, {{0, 2, 3, 5, 6, 8}, {{3}, {4}, {5}, {1}, {5}, {1}, {2}, {3}}}, 
         Pattern}]}, {GraphLayout -> "CircularEmbedding"}]]}, 
    TagBox[
     GraphicsGroupBox[
      GraphicsComplexBox[{{-0.9510565162951538, 
       0.3090169943749484}, {-0.5877852522924726, -0.8090169943749468}, {
       0.5877852522924738, -0.8090169943749481}, {0.9510565162951533, 
       0.30901699437494634`}, {-7.044813998280222*^-16, 1.}}, {
        {Hue[0.6, 0.7, 0.5], Opacity[0.7], 
         {Arrowheads[0.], ArrowBox[{1, 3}, 0.021812234931106983`]}, 
         {Arrowheads[0.], ArrowBox[{1, 4}, 0.021812234931106983`]}, 
         {Arrowheads[0.], ArrowBox[{2, 5}, 0.021812234931106983`]}, 
         {Arrowheads[0.], ArrowBox[{3, 5}, 0.021812234931106983`]}}, 
        {Hue[0.6, 0.2, 0.8], EdgeForm[{GrayLevel[0], Opacity[0.7]}], 
         DiskBox[1, 0.021812234931106983`], DiskBox[2, 0.021812234931106983`],
          DiskBox[3, 0.021812234931106983`], 
         DiskBox[4, 0.021812234931106983`], 
         DiskBox[5, 0.021812234931106983`]}}]],
     MouseAppearanceTag["NetworkGraphics"]],
    AllowKernelInitialization->False]],
  DefaultBaseStyle->{
   "NetworkGraphics", FrontEnd`GraphicsHighlightColor -> Hue[0.8, 1., 0.6]},
  FrameTicks->None,
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]]]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"AdjacencyMatrix", "[", 
   RowBox[{"Graph", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "1", ",", " ", "2", ",", " ", "3", ",", " ", "4", ",", " ", "5"}], 
      "}"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"UndirectedEdge", "[", 
        RowBox[{"1", ",", " ", "2"}], "]"}], ",", " ", 
       RowBox[{"UndirectedEdge", "[", 
        RowBox[{"3", ",", " ", "4"}], "]"}], ",", " ", 
       RowBox[{"UndirectedEdge", "[", 
        RowBox[{"2", ",", " ", "3"}], "]"}], ",", " ", 
       RowBox[{"UndirectedEdge", "[", 
        RowBox[{"2", ",", " ", "4"}], "]"}], ",", " ", 
       RowBox[{"UndirectedEdge", "[", 
        RowBox[{"1", ",", " ", "5"}], "]"}], ",", " ", 
       RowBox[{"UndirectedEdge", "[", 
        RowBox[{"4", ",", " ", "5"}], "]"}]}], "}"}]}], "]"}], "]"}], "//", 
  RowBox[{
  "\:041c\:0430\:0442\:0440\:0438\:0446\:0430", " ", 
   "\:0441\:043c\:0435\:0436\:043d\:043e\:0441\:0442\:0438"}]}]], "Input",
 NumberMarks->False],

Cell[BoxData[
 TagBox[
  TemplateBox[{RowBox[{
      StyleBox[
       TagBox["SparseArray", "SummaryHead"], "NonInterpretableSummary"], 
      StyleBox["[", "NonInterpretableSummary"], 
      DynamicModuleBox[{Typeset`open$$ = False}, 
       PanelBox[
        PaneSelectorBox[{False -> GridBox[{{
              PaneBox[
               ButtonBox[
                DynamicBox[
                 FEPrivate`FrontEndResource[
                 "FEBitmaps", "SquarePlusIconMedium"]], 
                ButtonFunction :> (Typeset`open$$ = True), Appearance -> None,
                 Evaluator -> Automatic, Method -> "Preemptive"], 
               Alignment -> {Center, Center}, ImageSize -> 
               Dynamic[{
                 Automatic, 
                  3.5 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                   Magnification])}]], 
              GraphicsBox[
               RasterBox[CompressedData["
1:eJxTTMoPSmVmYGBghWIQe2e3gevOLS/sb7gvX1cz7a39yYjcf/Ff39tble+O
m6V0zn6O8aIt5j+u2L9YpPg4cNUrnOK0NodU84er+qESXwDY9E8h
                "], {{0, 0}, {5, 5}}, {0, 1}], AspectRatio -> 1, Axes -> 
               False, Frame -> False, FrameLabel -> {None, None}, FrameStyle -> 
               Directive[
                 Opacity[0.5], 
                 Thickness[Tiny], 
                 RGBColor[0.368417, 0.506779, 0.709798]], 
               FrameTicks -> {{None, None}, {None, None}}, GridLinesStyle -> 
               Directive[
                 GrayLevel[0.5, 0.4]], ImageSize -> 
               Dynamic[{
                 Automatic, 
                  3.5 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                   Magnification])}], 
               Method -> {
                "AxisPadding" -> Scaled[0.02], "DefaultBoundaryStyle" -> 
                 Automatic, "DefaultPlotStyle" -> Automatic, "DomainPadding" -> 
                 Scaled[0.02], "RangePadding" -> Scaled[0.05]}], 
              GridBox[{{
                 RowBox[{
                   TagBox[
                   "\"Specified elements: \"", "SummaryItemAnnotation"], 
                   "\[InvisibleSpace]", 
                   TagBox["12", "SummaryItem"]}]}, {
                 RowBox[{
                   TagBox["\"Dimensions: \"", "SummaryItemAnnotation"], 
                   "\[InvisibleSpace]", 
                   TagBox[
                    RowBox[{"{", 
                    RowBox[{"5", ",", "5"}], "}"}], "SummaryItem"]}]}}, 
               GridBoxAlignment -> {
                "Columns" -> {{Left}}, "Rows" -> {{Automatic}}}, AutoDelete -> 
               False, GridBoxItemSize -> {
                "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
               GridBoxSpacings -> {
                "Columns" -> {{2}}, "Rows" -> {{Automatic}}}, 
               BaseStyle -> {
                ShowStringCharacters -> False, NumberMarks -> False, 
                 PrintPrecision -> 3, ShowSyntaxStyles -> False}]}}, 
            GridBoxAlignment -> {"Rows" -> {{Top}}}, AutoDelete -> False, 
            GridBoxItemSize -> {
             "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
            BaselinePosition -> {1, 1}], True -> GridBox[{{
              PaneBox[
               ButtonBox[
                DynamicBox[
                 FEPrivate`FrontEndResource[
                 "FEBitmaps", "SquareMinusIconMedium"]], 
                ButtonFunction :> (Typeset`open$$ = False), Appearance -> 
                None, Evaluator -> Automatic, Method -> "Preemptive"], 
               Alignment -> {Center, Center}, ImageSize -> 
               Dynamic[{
                 Automatic, 
                  3.5 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                   Magnification])}]], 
              GraphicsBox[
               RasterBox[CompressedData["
1:eJxTTMoPSmVmYGBghWIQe2e3gevOLS/sb7gvX1cz7a39yYjcf/Ff39tble+O
m6V0zn6O8aIt5j+u2L9YpPg4cNUrnOK0NodU84er+qESXwDY9E8h
                "], {{0, 0}, {5, 5}}, {0, 1}], AspectRatio -> 1, Axes -> 
               False, Frame -> False, FrameLabel -> {None, None}, FrameStyle -> 
               Directive[
                 Opacity[0.5], 
                 Thickness[Tiny], 
                 RGBColor[0.368417, 0.506779, 0.709798]], 
               FrameTicks -> {{None, None}, {None, None}}, GridLinesStyle -> 
               Directive[
                 GrayLevel[0.5, 0.4]], ImageSize -> 
               Dynamic[{
                 Automatic, 
                  3.5 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                   Magnification])}], 
               Method -> {
                "AxisPadding" -> Scaled[0.02], "DefaultBoundaryStyle" -> 
                 Automatic, "DefaultPlotStyle" -> Automatic, "DomainPadding" -> 
                 Scaled[0.02], "RangePadding" -> Scaled[0.05]}], 
              GridBox[{{
                 RowBox[{
                   TagBox[
                   "\"Specified elements: \"", "SummaryItemAnnotation"], 
                   "\[InvisibleSpace]", 
                   TagBox["12", "SummaryItem"]}]}, {
                 RowBox[{
                   TagBox["\"Dimensions: \"", "SummaryItemAnnotation"], 
                   "\[InvisibleSpace]", 
                   TagBox[
                    RowBox[{"{", 
                    RowBox[{"5", ",", "5"}], "}"}], "SummaryItem"]}]}, {
                 RowBox[{
                   TagBox["\"Default: \"", "SummaryItemAnnotation"], 
                   "\[InvisibleSpace]", 
                   TagBox["0", "SummaryItem"]}]}, {
                 RowBox[{
                   TagBox["\"Density: \"", "SummaryItemAnnotation"], 
                   "\[InvisibleSpace]", 
                   TagBox["0.48`", "SummaryItem"]}]}, {
                 RowBox[{
                   TagBox["\"Elements:\"", "SummaryItemAnnotation"], 
                   "\[InvisibleSpace]", 
                   TagBox["\"\"", "SummaryItem"]}]}, {
                 TagBox[
                  TagBox[
                   GridBox[{{
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"1", ",", "2"}], "}"}], "\[Rule]", 
                    StyleBox[
                    PaneBox[
                    "1", ContentPadding -> False, FrameMargins -> 0, 
                    StripOnInput -> True, BaselinePosition -> Baseline, 
                    ImageSize -> {{1, 300}, Automatic}], LineBreakWithin -> 
                    False]}]}, {
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"1", ",", "5"}], "}"}], "\[Rule]", 
                    StyleBox[
                    PaneBox[
                    "1", ContentPadding -> False, FrameMargins -> 0, 
                    StripOnInput -> True, BaselinePosition -> Baseline, 
                    ImageSize -> {{1, 300}, Automatic}], LineBreakWithin -> 
                    False]}]}, {
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"2", ",", "1"}], "}"}], "\[Rule]", 
                    StyleBox[
                    PaneBox[
                    "1", ContentPadding -> False, FrameMargins -> 0, 
                    StripOnInput -> True, BaselinePosition -> Baseline, 
                    ImageSize -> {{1, 300}, Automatic}], LineBreakWithin -> 
                    False]}]}, {
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"2", ",", "3"}], "}"}], "\[Rule]", 
                    StyleBox[
                    PaneBox[
                    "1", ContentPadding -> False, FrameMargins -> 0, 
                    StripOnInput -> True, BaselinePosition -> Baseline, 
                    ImageSize -> {{1, 300}, Automatic}], LineBreakWithin -> 
                    False]}]}, {
                    ItemBox[
                    "\"\[VerticalEllipsis]\"", Alignment -> Center, 
                    StripOnInput -> False]}}, 
                    GridBoxAlignment -> {"Columns" -> {{Left}}}, 
                    DefaultBaseStyle -> "Column", 
                    GridBoxItemSize -> {
                    "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
                   "Column"], "SummaryItem"]}}, 
               GridBoxAlignment -> {
                "Columns" -> {{Left}}, "Rows" -> {{Automatic}}}, AutoDelete -> 
               False, GridBoxItemSize -> {
                "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
               GridBoxSpacings -> {
                "Columns" -> {{2}}, "Rows" -> {{Automatic}}}, 
               BaseStyle -> {
                ShowStringCharacters -> False, NumberMarks -> False, 
                 PrintPrecision -> 3, ShowSyntaxStyles -> False}]}}, 
            GridBoxAlignment -> {"Rows" -> {{Top}}}, AutoDelete -> False, 
            GridBoxItemSize -> {
             "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
            BaselinePosition -> {1, 1}]}, 
         Dynamic[Typeset`open$$], ImageSize -> Automatic], BaselinePosition -> 
        Baseline], DynamicModuleValues :> {}], 
      StyleBox["]", "NonInterpretableSummary"]}]},
   "CopyTag",
   DisplayFunction->(#& ),
   InterpretationFunction->("SparseArray[<12>, {5, 5}]"& )],
  False,
  Editable->False,
  SelectWithContents->True,
  Selectable->False]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"MatrixForm", "[", "%2", "]"}]], "Input",
 NumberMarks->False],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"0", "1", "0", "0", "1"},
     {"1", "0", "1", "1", "0"},
     {"0", "1", "0", "1", "0"},
     {"0", "1", "1", "0", "1"},
     {"1", "0", "0", "1", "0"}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[
   SparseArray[
    Automatic, {5, 5}, 0, {
     1, {{0, 2, 5, 7, 10, 12}, {{2}, {5}, {1}, {3}, {4}, {2}, {4}, {2}, {3}, {
       5}, {1}, {4}}}, {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}}]]]]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 NamespaceBox["WolframAlphaQueryResults",
  DynamicModuleBox[{Typeset`q$$ = 
   "g1=Graph[{1\[UndirectedEdge]2, 3\[UndirectedEdge]4, 2\[UndirectedEdge]3, \
2\[UndirectedEdge]4, 1\[UndirectedEdge]5, 4\[UndirectedEdge]5}]", 
   Typeset`opts$$ = {
   AppearanceElements -> {"Extrusion", "Warnings", "Assumptions", "Pods"}, 
    Asynchronous -> All, 
    Method -> {
     "ExtrusionChosen" -> {"ImagePod:GraphData", "Image", 1, 1, "Content"}, 
      "Formats" -> {"cell", "minput", "moutput", "msound", "dataformats"}}}, 
   Typeset`elements$$ = {"Extrusion", "Warnings", "Assumptions", "Pods"}, 
   Typeset`pod1$$ = XMLElement[
   "pod", {"title" -> "Input interpretation", "scanner" -> "Identity", "id" -> 
     "Input", "position" -> "100", "error" -> "false", "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement[
       "minput", {}, {
        "Graph[{UndirectedEdge[1, 2], UndirectedEdge[3, 4], UndirectedEdge[2, \
3], UndirectedEdge[2, 4], UndirectedEdge[1, 5], UndirectedEdge[4, 5]}]"}], 
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             FormBox[
              StyleBox[
               TemplateBox[{
                 TagBox[
                  GridBox[{{
                    PaneBox[
                    StyleBox[
                    TagBox[
                    GridBox[{{
                    StyleBox[
                    RowBox[{"1", "\[Rule]", "2"}], {
                    LineIndent -> 0, LineSpacing -> {0.9, 0, 1.5}}], 
                    StyleBox[
                    RowBox[{"3", "\[Rule]", "4"}], {
                    LineIndent -> 0, LineSpacing -> {0.9, 0, 1.5}}], 
                    StyleBox[
                    RowBox[{"2", "\[Rule]", "3"}], {
                    LineIndent -> 0, LineSpacing -> {0.9, 0, 1.5}}], 
                    StyleBox[
                    RowBox[{"2", "\[Rule]", "4"}], {
                    LineIndent -> 0, LineSpacing -> {0.9, 0, 1.5}}], 
                    StyleBox[
                    RowBox[{"1", "\[Rule]", "5"}], {
                    LineIndent -> 0, LineSpacing -> {0.9, 0, 1.5}}], 
                    StyleBox[
                    RowBox[{"4", "\[Rule]", "5"}], {
                    LineIndent -> 0, LineSpacing -> {0.9, 0, 1.5}}]}}, 
                    GridBoxBackground -> {"Columns" -> {
                    GrayLevel[0.949], 
                    GrayLevel[0.949], 
                    GrayLevel[0.949], 
                    GrayLevel[0.949], 
                    GrayLevel[0.949], 
                    GrayLevel[0.949]}, "Rows" -> {{None}}}, 
                    GridBoxItemSize -> {
                    "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                    ColumnsEqual -> False, RowsEqual -> False, 
                    GridBoxDividers -> {"Columns" -> {
                    GrayLevel[0.84], 
                    GrayLevel[0.84], 
                    GrayLevel[0.84], 
                    GrayLevel[0.84], 
                    GrayLevel[0.84], 
                    GrayLevel[0.84], 
                    GrayLevel[0.84]}, "Rows" -> {{
                    GrayLevel[0.84]}}, 
                    "RowsIndexed" -> {
                    1 -> GrayLevel[0.84], -1 -> GrayLevel[0.84]}}, 
                    GridBoxSpacings -> {
                    "Columns" -> {2, 2, 2, 2, 2, 2, 2}, "Rows" -> {{1}}}, 
                    GridBoxAlignment -> {
                    "Columns" -> {{Left}}, "Rows" -> {{Baseline}}}, 
                    AllowScriptLevelChange -> False, BaselinePosition -> 1], 
                    Global`TagBoxWrapper["Separator" -> " | "]], 
                    LineSpacing -> {1, 0, 1.5}, LineIndent -> 0], 
                    BaselinePosition -> Center]}}, 
                   GridBoxItemSize -> {
                    "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                   ColumnsEqual -> False, RowsEqual -> False, 
                   GridBoxSpacings -> {"Columns" -> {{
                    AbsoluteThickness[-1]}}, "Rows" -> {{0}}}, 
                   AllowScriptLevelChange -> False], 
                  Global`TagBoxWrapper["Separator" -> " | "]], "\"  \"", 
                 StyleBox[
                  
                  RowBox[{
                   "\"(\"", "\[NoBreak]", "\"undirected graph\"", 
                    "\[NoBreak]", "\")\""}], {
                   GrayLevel[0.6], 
                   LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                   0}, StripOnInput -> False]}, "RowDefault"], LineIndent -> 
               0], TraditionalForm], 
             PolynomialForm[#, TraditionalOrder -> False]& ], 
            TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,minput,computabledata,formatteddata"}]}]}], 
   Typeset`pod2$$ = XMLElement[
   "pod", {"title" -> "Image", "scanner" -> "Data", "id" -> 
     "ImagePod:GraphData", "position" -> "200", "error" -> "false", 
     "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            GraphicsBox[
             TagBox[
              
              GraphicsComplexBox[{{0.0030300097419797556`, 0.}, {
               1.0827510956672175`, 0.037165849614004876`}, {
               1.9456117684869585`, 0.48848036776203774`}, {
               1.0814376712706895`, 0.9395301419958734}, {0., 
               0.9743574159624354}}, {{
                 GrayLevel[0.5], 
                 LineBox[{{1, 2}, {1, 5}, {2, 3}, {2, 4}, {3, 4}, {4, 5}}]}, {
                 InsetBox[
                  FormBox[
                   FrameBox[
                   "1", Background -> RGBColor[1, 1, 0.8], FrameStyle -> 
                    RGBColor[0.94, 0.85, 0.36], FrameMargins -> Inherited, 
                    StripOnInput -> False], TraditionalForm], 1], 
                 InsetBox[
                  FormBox[
                   FrameBox[
                   "2", Background -> RGBColor[1, 1, 0.8], FrameStyle -> 
                    RGBColor[0.94, 0.85, 0.36], FrameMargins -> Inherited, 
                    StripOnInput -> False], TraditionalForm], 2], 
                 InsetBox[
                  FormBox[
                   FrameBox[
                   "3", Background -> RGBColor[1, 1, 0.8], FrameStyle -> 
                    RGBColor[0.94, 0.85, 0.36], FrameMargins -> Inherited, 
                    StripOnInput -> False], TraditionalForm], 3], 
                 InsetBox[
                  FormBox[
                   FrameBox[
                   "4", Background -> RGBColor[1, 1, 0.8], FrameStyle -> 
                    RGBColor[0.94, 0.85, 0.36], FrameMargins -> Inherited, 
                    StripOnInput -> False], TraditionalForm], 4], 
                 InsetBox[
                  FormBox[
                   FrameBox[
                   "5", Background -> RGBColor[1, 1, 0.8], FrameStyle -> 
                    RGBColor[0.94, 0.85, 0.36], FrameMargins -> Inherited, 
                    StripOnInput -> False], TraditionalForm], 5]}}, {}], 
              Annotation[#, 
               VertexCoordinateRules -> {{0.0030300097419797556`, 0.}, {
                1.0827510956672175`, 0.037165849614004876`}, {
                1.9456117684869585`, 0.48848036776203774`}, {
                1.0814376712706895`, 0.9395301419958734}, {0., 
                0.9743574159624354}}]& ], {
             ImageSize -> {150}, FrameTicks -> None, PlotRange -> All, 
              PlotRangePadding -> Scaled[0.1], AspectRatio -> Automatic, 
              ImageSize -> NCache[{
                 Rational[19900, 99], {250}}, {201.010101010101, {250}}]}], 
            TraditionalForm]], "Output", {}]}], 
       XMLElement["dataformats", {}, {}]}], 
     XMLElement["states", {"count" -> "1"}, {
       XMLElement[
       "state", {
        "name" -> "More images", "input" -> 
         "ImagePod:GraphData__More images"}, {}]}]}], Typeset`pod3$$ = 
   XMLElement[
   "pod", {"title" -> "Basic properties", "scanner" -> "Data", "id" -> 
     "BasicPropertiesPod:GraphData", "position" -> "300", "error" -> "false", 
     "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            StyleBox[
             TagBox[
              GridBox[{{
                 TagBox[
                  PaneBox[
                  "\"vertex count\"", 
                   BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                  Global`TagBoxWrapper["Label"]], 
                 TagBox["5", #& ]}, {
                 TagBox[
                  PaneBox[
                  "\"edge count\"", 
                   BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                  Global`TagBoxWrapper["Label"]], 
                 TagBox["6", #& ]}, {
                 TagBox[
                  PaneBox[
                  "\"number of connected components\"", 
                   BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                  Global`TagBoxWrapper["Label"]], 
                 TagBox["1", #& ]}}, 
               GridBoxAlignment -> {
                "Columns" -> {Left, Left}, "Rows" -> {{Baseline}}}, 
               AutoDelete -> False, 
               GridBoxBackground -> {"Columns" -> {None, None}}, 
               GridBoxFrame -> {"Columns" -> {{True}}, "Rows" -> {{True}}}, 
               GridBoxItemSize -> {
                "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
               GridBoxSpacings -> {"Columns" -> {{1.5}, 2}, "Rows" -> {{1}}}, 
               FrameStyle -> GrayLevel[0.84], BaselinePosition -> Automatic, 
               AllowScriptLevelChange -> False], "Grid"], 
             LineSpacing -> {0.9, 0, 1.5}, LineIndent -> 0, StripOnInput -> 
             False], TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata"}]}], 
     XMLElement["states", {"count" -> "1"}, {
       XMLElement[
       "state", {
        "name" -> "Show lists", "input" -> 
         "BasicPropertiesPod:GraphData__Show lists"}, {}]}]}], 
   Typeset`pod4$$ = XMLElement[
   "pod", {"title" -> "Graph features", "scanner" -> "Data", "id" -> 
     "PropertiesPod:GraphData", "position" -> "400", "error" -> "false", 
     "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            StyleBox[
             RowBox[{
               TagBox[
                TagBox["\"biconnected\"", 
                 Global`TagBoxWrapper[
                 "EntityClass" -> {GraphData, "Biconnected"}]], Identity], 
               StyleBox[
                RowBox[{"\[NoBreak]", 
                  PaneBox[
                  "\"  |  \"", BaselinePosition -> Baseline, BaseStyle -> 
                   GrayLevel[0.6]]}], AutoSpacing -> True], 
               TagBox[
                TagBox["\"connected\"", 
                 Global`TagBoxWrapper[
                 "EntityClass" -> {GraphData, "Connected"}]], Identity], 
               StyleBox[
                RowBox[{"\[NoBreak]", 
                  PaneBox[
                  "\"  |  \"", BaselinePosition -> Baseline, BaseStyle -> 
                   GrayLevel[0.6]]}], AutoSpacing -> True], 
               TagBox[
                TagBox["\"Hamiltonian\"", 
                 Global`TagBoxWrapper[
                 "EntityClass" -> {GraphData, "Hamiltonian"}]], Identity], 
               StyleBox[
                RowBox[{"\[NoBreak]", 
                  PaneBox[
                  "\"  |  \"", BaselinePosition -> Baseline, BaseStyle -> 
                   GrayLevel[0.6]]}], AutoSpacing -> True], 
               TagBox[
                TagBox["\"noneulerian\"", 
                 Global`TagBoxWrapper[
                 "EntityClass" -> {GraphData, "Noneulerian"}]], Identity], 
               StyleBox[
                RowBox[{"\[NoBreak]", 
                  PaneBox[
                  "\"  |  \"", BaselinePosition -> Baseline, BaseStyle -> 
                   GrayLevel[0.6]]}], AutoSpacing -> True], 
               TagBox[
                TagBox["\"perfect\"", 
                 Global`TagBoxWrapper[
                 "EntityClass" -> {GraphData, "Perfect"}]], Identity], 
               StyleBox[
                RowBox[{"\[NoBreak]", 
                  PaneBox[
                  "\"  |  \"", BaselinePosition -> Baseline, BaseStyle -> 
                   GrayLevel[0.6]]}], AutoSpacing -> True], 
               TagBox[
                TagBox["\"planar\"", 
                 Global`TagBoxWrapper[
                 "EntityClass" -> {GraphData, "Planar"}]], Identity], 
               StyleBox[
                RowBox[{"\[NoBreak]", 
                  PaneBox[
                  "\"  |  \"", BaselinePosition -> Baseline, BaseStyle -> 
                   GrayLevel[0.6]]}], AutoSpacing -> True], 
               TagBox[
                TagBox["\"simple\"", 
                 Global`TagBoxWrapper[
                 "EntityClass" -> {GraphData, "Simple"}]], Identity], 
               StyleBox[
                RowBox[{"\[NoBreak]", 
                  PaneBox[
                  "\"  |  \"", BaselinePosition -> Baseline, BaseStyle -> 
                   GrayLevel[0.6]]}], AutoSpacing -> True], 
               TagBox[
                TagBox["\"traceable\"", 
                 Global`TagBoxWrapper[
                 "EntityClass" -> {GraphData, "Traceable"}]], Identity], 
               StyleBox[
                RowBox[{"\[NoBreak]", 
                  PaneBox[
                  "\"  |  \"", BaselinePosition -> Baseline, BaseStyle -> 
                   GrayLevel[0.6]]}], AutoSpacing -> True], 
               TagBox[
                TagBox["\"undirected\"", 
                 Global`TagBoxWrapper[
                 "EntityClass" -> {GraphData, "Undirected"}]], Identity]}], 
             LinebreakAdjustments -> {1, 10, 0, 0, 100}, LineIndent -> 0], 
            TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {"plaintext,computabledata,formatteddata"}]}]}], 
   Typeset`pod5$$ = XMLElement[
   "pod", {"title" -> "Vertex degrees", "scanner" -> "Data", "id" -> 
     "DegreesPod:GraphData", "position" -> "500", "error" -> "false", 
     "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            StyleBox[
             RowBox[{
               TemplateBox[{"  ", "\"  \"", "2", 
                 StyleBox[
                  RowBox[{"\"(\"", "\[NoBreak]", 
                    
                    TemplateBox[{"  ", "\"  \"", "3", "\"vertices\""}, 
                    "RowWithSeparators"], "\[NoBreak]", "\")\""}], {
                   GrayLevel[0.6], 
                   LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                   0}, StripOnInput -> False]}, "RowWithSeparators"], 
               StyleBox[
                RowBox[{"\[NoBreak]", 
                  PaneBox[
                  "\"  |  \"", BaselinePosition -> Baseline, BaseStyle -> 
                   GrayLevel[0.6]]}], AutoSpacing -> True], 
               TemplateBox[{"  ", "\"  \"", "3", 
                 StyleBox[
                  RowBox[{"\"(\"", "\[NoBreak]", 
                    
                    TemplateBox[{"  ", "\"  \"", "2", "\"vertices\""}, 
                    "RowWithSeparators"], "\[NoBreak]", "\")\""}], {
                   GrayLevel[0.6], 
                   LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                   0}, StripOnInput -> False]}, "RowWithSeparators"]}], 
             LinebreakAdjustments -> {1, 10, 0, 0, 100}, LineIndent -> 0], 
            TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata"}]}]}], 
   Typeset`pod6$$ = XMLElement[
   "pod", {"title" -> "Topological properties", "scanner" -> "Data", "id" -> 
     "TopologicalPropertiesPod:GraphData", "position" -> "600", "error" -> 
     "false", "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            StyleBox[
             TagBox[
              GridBox[{{
                 TagBox[
                  PaneBox[
                  "\"radius\"", 
                   BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                  Global`TagBoxWrapper["Label"]], 
                 TagBox["2", #& ]}, {
                 TagBox[
                  PaneBox[
                  "\"diameter\"", 
                   BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                  Global`TagBoxWrapper["Label"]], 
                 TagBox["2", #& ]}, {
                 TagBox[
                  PaneBox[
                  "\"girth\"", 
                   BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                  Global`TagBoxWrapper["Label"]], 
                 TagBox["3", #& ]}, {
                 TagBox[
                  PaneBox[
                  "\"vertex connectivity\"", 
                   BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                  Global`TagBoxWrapper["Label"]], 
                 TagBox["2", #& ]}, {
                 TagBox[
                  PaneBox[
                  "\"edge connectivity\"", 
                   BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                  Global`TagBoxWrapper["Label"]], 
                 TagBox["2", #& ]}}, 
               GridBoxAlignment -> {
                "Columns" -> {Left, Left}, "Rows" -> {{Baseline}}}, 
               AutoDelete -> False, 
               GridBoxBackground -> {"Columns" -> {None, None}}, 
               GridBoxFrame -> {"Columns" -> {{True}}, "Rows" -> {{True}}}, 
               GridBoxItemSize -> {
                "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
               GridBoxSpacings -> {"Columns" -> {{1.5}, 2}, "Rows" -> {{1}}}, 
               FrameStyle -> GrayLevel[0.84], BaselinePosition -> Automatic, 
               AllowScriptLevelChange -> False], "Grid"], 
             LineSpacing -> {0.9, 0, 1.5}, LineIndent -> 0, StripOnInput -> 
             False], TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata"}]}], 
     XMLElement["states", {"count" -> "1"}, {
       XMLElement[
       "state", {
        "name" -> "More properties", "input" -> 
         "TopologicalPropertiesPod:GraphData__More properties"}, {}]}]}], 
   Typeset`pod7$$ = XMLElement[
   "pod", {"title" -> "Graph polynomials", "scanner" -> "Data", "id" -> 
     "GraphPolynomialPod:GraphData", "position" -> "700", "error" -> "false", 
     "numsubpods" -> "3"}, {
     XMLElement["subpod", {"title" -> "Characteristic polynomial"}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             RowBox[{
               RowBox[{"-", "x"}], " ", 
               RowBox[{"(", 
                 RowBox[{"x", "+", "2"}], ")"}], " ", 
               RowBox[{"(", 
                 RowBox[{
                   SuperscriptBox["x", "3"], "-", 
                   RowBox[{"2", " ", 
                    SuperscriptBox["x", "2"]}], "-", 
                   RowBox[{"2", " ", "x"}], "+", "2"}], ")"}]}], Short], 
            TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,formuladata"}]}], 
     XMLElement["subpod", {"title" -> "Rank polynomial"}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             RowBox[{
               RowBox[{
                 SuperscriptBox["x", "4"], " ", 
                 SuperscriptBox["y", "2"]}], "+", 
               RowBox[{"6", " ", 
                 SuperscriptBox["x", "4"], " ", "y"}], "+", 
               RowBox[{"11", " ", 
                 SuperscriptBox["x", "4"]}], "+", 
               RowBox[{"4", " ", 
                 SuperscriptBox["x", "3"], " ", "y"}], "+", 
               RowBox[{"19", " ", 
                 SuperscriptBox["x", "3"]}], "+", 
               RowBox[{
                 SuperscriptBox["x", "2"], " ", "y"}], "+", 
               RowBox[{"15", " ", 
                 SuperscriptBox["x", "2"]}], "+", 
               RowBox[{"6", " ", "x"}], "+", "1"}], Short], TraditionalForm]],
           "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,formuladata"}]}], 
     XMLElement["subpod", {"title" -> "Tutte polynomial"}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             RowBox[{
               SuperscriptBox["x", "4"], "+", 
               RowBox[{"2", " ", 
                 SuperscriptBox["x", "3"]}], "+", 
               RowBox[{
                 SuperscriptBox["x", "2"], " ", "y"}], "+", 
               RowBox[{"2", " ", 
                 SuperscriptBox["x", "2"]}], "+", 
               RowBox[{"2", " ", "x", " ", "y"}], "+", "x", "+", 
               SuperscriptBox["y", "2"], "+", "y"}], Short], 
            TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,formuladata"}]}], 
     XMLElement["states", {"count" -> "1"}, {
       XMLElement[
       "state", {
        "name" -> "More polynomials", "input" -> 
         "GraphPolynomialPod:GraphData__More polynomials"}, {}]}]}], 
   Typeset`pod8$$ = XMLElement[
   "pod", {"title" -> "Coloring properties", "scanner" -> "Data", "id" -> 
     "ColoringsPod:GraphData", "position" -> "800", "error" -> "false", 
     "numsubpods" -> "3"}, {
     XMLElement["subpod", {"title" -> "Chromatic number"}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox["3", #& ], TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata"}]}], 
     XMLElement["subpod", {"title" -> "Edge chromatic number"}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox["3", #& ], TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata"}]}], 
     XMLElement["subpod", {"title" -> "Chromatic polynomial"}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             RowBox[{
               RowBox[{"(", 
                 RowBox[{"x", "-", "2"}], ")"}], " ", 
               RowBox[{"(", 
                 RowBox[{"x", "-", "1"}], ")"}], " ", "x", " ", 
               RowBox[{"(", 
                 RowBox[{
                   SuperscriptBox["x", "2"], "-", 
                   RowBox[{"3", " ", "x"}], "+", "3"}], ")"}]}], Identity], 
            TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,formuladata"}]}]}], 
   Typeset`pod9$$ = XMLElement[
   "pod", {"title" -> "Spectrum", "scanner" -> "Data", "id" -> 
     "SpectrumPod:GraphData", "position" -> "900", "error" -> "false", 
     "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TemplateBox[{"\[ThinSpace]", "\" \"", 
              SuperscriptBox[
               RowBox[{"(", 
                 TagBox[
                  RowBox[{"-", "2"}], HoldForm], ")"}], "1"], 
              SuperscriptBox[
               TagBox[
                TagBox[
                 GridBox[{{
                    FormBox[
                    TagBox[
                    FormBox[
                    TemplateBox[{
                    TemplateBox[{
                    StyleBox[
                    "\"root of  \"", 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, 
                    GrayLevel[0.6], StripOnInput -> False]}, "RowDefault"], 
                    RowBox[{"2", "-", 
                    RowBox[{"2", " ", "x"}], "-", 
                    RowBox[{"2", " ", 
                    SuperscriptBox["x", "2"]}], "+", 
                    SuperscriptBox["x", "3"]}], 
                    TemplateBox[{
                    StyleBox[
                    "\"  near  \"", 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, 
                    GrayLevel[0.6], StripOnInput -> False]}, "RowDefault"], 
                    RowBox[{"x", "\[LongEqual]", 
                    RowBox[{"-", "1.1700864866260337`"}]}]}, "RowDefault"], 
                    TraditionalForm], Format[#, TraditionalForm]& ], 
                    TraditionalForm]}}, AutoDelete -> False, 
                  GridBoxFrame -> {
                   "ColumnsIndexed" -> {{{1, -1}, {1, -1}} -> True}}, 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                  FrameStyle -> GrayLevel[0.84], BaselinePosition -> 1], 
                 "Grid"], HoldForm], "1"], 
              SuperscriptBox[
               TagBox["0", HoldForm], "1"], 
              SuperscriptBox[
               TagBox[
                TagBox[
                 GridBox[{{
                    FormBox[
                    TagBox[
                    FormBox[
                    TemplateBox[{
                    TemplateBox[{
                    StyleBox[
                    "\"root of  \"", 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, 
                    GrayLevel[0.6], StripOnInput -> False]}, "RowDefault"], 
                    RowBox[{"2", "-", 
                    RowBox[{"2", " ", "x"}], "-", 
                    RowBox[{"2", " ", 
                    SuperscriptBox["x", "2"]}], "+", 
                    SuperscriptBox["x", "3"]}], 
                    TemplateBox[{
                    StyleBox[
                    "\"  near  \"", 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, 
                    GrayLevel[0.6], StripOnInput -> False]}, "RowDefault"], 
                    RowBox[{"x", "\[LongEqual]", "0.6888921825340181`"}]}, 
                    "RowDefault"], TraditionalForm], 
                    Format[#, TraditionalForm]& ], TraditionalForm]}}, 
                  AutoDelete -> False, 
                  GridBoxFrame -> {
                   "ColumnsIndexed" -> {{{1, -1}, {1, -1}} -> True}}, 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                  FrameStyle -> GrayLevel[0.84], BaselinePosition -> 1], 
                 "Grid"], HoldForm], "1"], 
              SuperscriptBox[
               TagBox[
                TagBox[
                 GridBox[{{
                    FormBox[
                    TagBox[
                    FormBox[
                    TemplateBox[{
                    TemplateBox[{
                    StyleBox[
                    "\"root of  \"", 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, 
                    GrayLevel[0.6], StripOnInput -> False]}, "RowDefault"], 
                    RowBox[{"2", "-", 
                    RowBox[{"2", " ", "x"}], "-", 
                    RowBox[{"2", " ", 
                    SuperscriptBox["x", "2"]}], "+", 
                    SuperscriptBox["x", "3"]}], 
                    TemplateBox[{
                    StyleBox[
                    "\"  near  \"", 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, 
                    GrayLevel[0.6], StripOnInput -> False]}, "RowDefault"], 
                    RowBox[{"x", "\[LongEqual]", "2.4811943040920155`"}]}, 
                    "RowDefault"], TraditionalForm], 
                    Format[#, TraditionalForm]& ], TraditionalForm]}}, 
                  AutoDelete -> False, 
                  GridBoxFrame -> {
                   "ColumnsIndexed" -> {{{1, -1}, {1, -1}} -> True}}, 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                  FrameStyle -> GrayLevel[0.84], BaselinePosition -> 1], 
                 "Grid"], HoldForm], "1"]}, "RowWithSeparators"], 
            TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,formuladata"}]}], 
     XMLElement["states", {"count" -> "1"}, {
       XMLElement[
       "state", {
        "name" -> "Approximate form", "input" -> 
         "SpectrumPod:GraphData__Approximate form"}, {}]}]}], 
   Typeset`pod10$$ = XMLElement[
   "pod", {"title" -> "Associated matrices", "scanner" -> "Data", "id" -> 
     "AssociatedMatricesPod:GraphData", "position" -> "1000", "error" -> 
     "false", "numsubpods" -> "2"}, {
     XMLElement["subpod", {"title" -> "Adjacency matrix"}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             RowBox[{"(", "\[NoBreak]", 
               
               GridBox[{{"0", "1", "0", "0", "1"}, {
                 "1", "0", "1", "1", "0"}, {"0", "1", "0", "1", "0"}, {
                 "0", "1", "1", "0", "1"}, {"1", "0", "0", "1", "0"}}, 
                RowSpacings -> 1, ColumnSpacings -> 1, RowAlignments -> 
                Baseline, ColumnAlignments -> Center], "\[NoBreak]", ")"}], 
             Identity], TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,formuladata"}]}], 
     XMLElement["subpod", {"title" -> "Incidence matrix"}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             RowBox[{"(", "\[NoBreak]", 
               
               GridBox[{{"1", "1", "0", "0", "0", "0"}, {
                 "1", "0", "1", "1", "0", "0"}, {
                 "0", "0", "1", "0", "1", "0"}, {
                 "0", "0", "0", "1", "1", "1"}, {
                 "0", "1", "0", "0", "0", "1"}}, RowSpacings -> 1, 
                ColumnSpacings -> 1, RowAlignments -> Baseline, 
                ColumnAlignments -> Center], "\[NoBreak]", ")"}], Identity], 
            TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,formuladata"}]}], 
     XMLElement["states", {"count" -> "1"}, {
       XMLElement[
       "state", {
        "name" -> "More matrices", "input" -> 
         "AssociatedMatricesPod:GraphData__More matrices"}, {}]}]}], 
   Typeset`pod11$$ = XMLElement[
   "pod", {"title" -> "Graph indices", "scanner" -> "Data", "id" -> 
     "GraphIndicesPod:GraphData", "position" -> "1100", "error" -> "false", 
     "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            StyleBox[
             TagBox[
              GridBox[{{
                 TagBox[
                  PaneBox[
                  "\"Hosoya index\"", 
                   BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                  Global`TagBoxWrapper["Label"]], 
                 TagBox["0", #& ]}, {
                 TagBox[
                  PaneBox[
                  "\"Kirchhoff index\"", 
                   BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                  Global`TagBoxWrapper["Label"]], 
                 TagBox["8.182", 
                  Global`TagBoxWrapper["StringBoxes" -> "8.182"]]}, {
                 TagBox[
                  PaneBox[
                  "\"stability index\"", 
                   BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                  Global`TagBoxWrapper["Label"]], 
                 TagBox["2", #& ]}, {
                 TagBox[
                  PaneBox[
                  "\"Wiener index\"", 
                   BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                  Global`TagBoxWrapper["Label"]], 
                 TagBox["14", #& ]}}, 
               GridBoxAlignment -> {
                "Columns" -> {Left, Left}, "Rows" -> {{Baseline}}}, 
               AutoDelete -> False, 
               GridBoxBackground -> {"Columns" -> {None, None}}, 
               GridBoxFrame -> {"Columns" -> {{True}}, "Rows" -> {{True}}}, 
               GridBoxItemSize -> {
                "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
               GridBoxSpacings -> {"Columns" -> {{1.5}, 2}, "Rows" -> {{1}}}, 
               FrameStyle -> GrayLevel[0.84], BaselinePosition -> Automatic, 
               AllowScriptLevelChange -> False], "Grid"], 
             LineSpacing -> {0.9, 0, 1.5}, LineIndent -> 0, StripOnInput -> 
             False], TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata"}]}], 
     XMLElement["states", {"count" -> "1"}, {
       XMLElement[
       "state", {
        "name" -> "More indices", "input" -> 
         "GraphIndicesPod:GraphData__More indices"}, {}]}]}], 
   Typeset`aux1$$ = {True, False, {False}, True}, Typeset`aux2$$ = {
   True, False, {False}, True}, Typeset`aux3$$ = {True, False, {False}, True},
    Typeset`aux4$$ = {True, False, {False}, True}, Typeset`aux5$$ = {
   True, False, {False}, True}, Typeset`aux6$$ = {True, False, {False}, True},
    Typeset`aux7$$ = {True, False, {False}, True}, Typeset`aux8$$ = {
   True, False, {False}, True}, Typeset`aux9$$ = {True, False, {False}, True},
    Typeset`aux10$$ = {True, False, {False}, True}, Typeset`aux11$$ = {
   True, False, {False}, True}, Typeset`asyncpods$$ = {}, Typeset`nonpods$$ = {
    XMLElement["warnings", {"count" -> "1"}, {
      XMLElement[
      "reinterpret", {
       "text" -> "Using closest Wolfram|Alpha interpretation:", "new" -> 
        "1\[UndirectedEdge]2, 3\[UndirectedEdge]4, 2\[UndirectedEdge]3, 2\
\[UndirectedEdge]4, 1\[UndirectedEdge]5, 4\[UndirectedEdge]5", "score" -> 
        "0.69697", "level" -> "high"}, {}]}], 
    XMLElement["sources", {"count" -> "1"}, {
      XMLElement[
      "source", {
       "url" -> 
        "http://www.wolframalpha.com/sources/GraphDataSourceInformationNotes.\
html", "text" -> "Graph data"}, {}]}]}, Typeset`initdone$$ = True, 
   Typeset`queryinfo$$ = {
   "success" -> "true", "error" -> "false", "numpods" -> "11", "datatypes" -> 
    "Graph", "timedout" -> "", "timedoutpods" -> "", "timing" -> "7.462", 
    "parsetiming" -> "0.542", "parsetimedout" -> "false", "recalculate" -> "",
     "id" -> "MSPa24211hi917b7cgb441hg0000646g8c27364f5h28", "host" -> 
    "http://www3.wolframalpha.com", "server" -> "14", "related" -> "", 
    "version" -> "2.6"}, Typeset`sessioninfo$$ = {
   "TimeZone" -> 3., 
    "Date" -> {2015, 3, 17, 8, 9, 44.9015333`9.40483604071677}, "Line" -> 36, 
    "SessionID" -> 26708331447338383811}, Typeset`showpods$$ = {1, 2, 3, 4, 5,
    6, 7, 8, 9, 10, 11}, Typeset`failedpods$$ = {}, Typeset`chosen$$ = {
   "ImagePod:GraphData", "Image", 1, 1, "Content"}, Typeset`open$$ = False, 
   Typeset`newq$$ = 
   "g1=Graph[{1\[UndirectedEdge]2, 3\[UndirectedEdge]4, 2\[UndirectedEdge]3, \
2\[UndirectedEdge]4, 1\[UndirectedEdge]5, 4\[UndirectedEdge]5}]"}, 
   DynamicBox[ToBoxes[
     AlphaIntegration`FormatAlphaResults[
      Dynamic[{
       1, {Typeset`pod1$$, Typeset`pod2$$, Typeset`pod3$$, Typeset`pod4$$, 
         Typeset`pod5$$, Typeset`pod6$$, Typeset`pod7$$, Typeset`pod8$$, 
         Typeset`pod9$$, Typeset`pod10$$, Typeset`pod11$$}, {
        Typeset`aux1$$, Typeset`aux2$$, Typeset`aux3$$, Typeset`aux4$$, 
         Typeset`aux5$$, Typeset`aux6$$, Typeset`aux7$$, Typeset`aux8$$, 
         Typeset`aux9$$, Typeset`aux10$$, Typeset`aux11$$}, Typeset`chosen$$, 
        Typeset`open$$, Typeset`elements$$, Typeset`q$$, Typeset`opts$$, 
        Typeset`nonpods$$, Typeset`queryinfo$$, Typeset`sessioninfo$$, 
        Typeset`showpods$$, Typeset`failedpods$$, Typeset`newq$$}]], 
     StandardForm],
    ImageSizeCache->{292., {48., 18.}},
    TrackedSymbols:>{Typeset`showpods$$, Typeset`failedpods$$}],
   DynamicModuleValues:>{},
   Initialization:>If[
     Not[Typeset`initdone$$], Null; WolframAlphaClient`Private`doAsyncUpdates[
       Hold[{
        Typeset`pod1$$, Typeset`pod2$$, Typeset`pod3$$, Typeset`pod4$$, 
         Typeset`pod5$$, Typeset`pod6$$, Typeset`pod7$$, Typeset`pod8$$, 
         Typeset`pod9$$, Typeset`pod10$$, Typeset`pod11$$}], 
       Typeset`asyncpods$$, 
       Dynamic[Typeset`failedpods$$]]; Typeset`asyncpods$$ = {}; 
     Typeset`initdone$$ = True],
   SynchronousInitialization->False],
  BaseStyle->{Deployed -> True},
  DeleteWithContents->True,
  Editable->False,
  SelectWithContents->True]], "WolframAlphaShortInput"],

Cell[BoxData[
 InterpretationBox[
  FrameBox[
   StyleBox[
    FormBox[
     GraphicsBox[
      TagBox[
       GraphicsComplexBox[{{0.0030300097419797556`, 0.}, {1.0827510956672175`,
         0.037165849614004876`}, {1.9456117684869585`, 
        0.48848036776203774`}, {1.0814376712706895`, 0.9395301419958734}, {0.,
         0.9743574159624354}}, {
         {GrayLevel[0.5], 
          LineBox[{{1, 2}, {1, 5}, {2, 3}, {2, 4}, {3, 4}, {4, 5}}]}, {
          InsetBox[
           FrameBox["1",
            Background->RGBColor[1, 1, 0.8],
            FrameStyle->RGBColor[0.94, 0.85, 0.36],
            StripOnInput->False], 1], InsetBox[
           FrameBox["2",
            Background->RGBColor[1, 1, 0.8],
            FrameStyle->RGBColor[0.94, 0.85, 0.36],
            StripOnInput->False], 2], InsetBox[
           FrameBox["3",
            Background->RGBColor[1, 1, 0.8],
            FrameStyle->RGBColor[0.94, 0.85, 0.36],
            StripOnInput->False], 3], InsetBox[
           FrameBox["4",
            Background->RGBColor[1, 1, 0.8],
            FrameStyle->RGBColor[0.94, 0.85, 0.36],
            StripOnInput->False], 4], InsetBox[
           FrameBox["5",
            Background->RGBColor[1, 1, 0.8],
            FrameStyle->RGBColor[0.94, 0.85, 0.36],
            StripOnInput->False], 5]}}],
       Annotation[#, 
        VertexCoordinateRules -> {{0.0030300097419797556`, 0.}, {
         1.0827510956672175`, 0.037165849614004876`}, {1.9456117684869585`, 
         0.48848036776203774`}, {1.0814376712706895`, 0.9395301419958734}, {
         0., 0.9743574159624354}}]& ],
      AspectRatio->Automatic,
      FrameTicks->None,
      ImageSize->{150},
      PlotRange->All,
      PlotRangePadding->Scaled[0.1]],
     TraditionalForm], "Output",
    ScriptLevel->0,
    FontFamily->"Times",
    FontSize->14,
    Background->None],
   BaseStyle->{Plain},
   FrameMargins->10,
   FrameStyle->GrayLevel[0.85],
   RoundingRadius->5,
   StripOnInput->False],
  WolframAlphaResult[
  "g1=Graph[{1\[UndirectedEdge]2, 3\[UndirectedEdge]4, 2\[UndirectedEdge]3, 2\
\[UndirectedEdge]4, 1\[UndirectedEdge]5, 4\[UndirectedEdge]5}]", {{
    "ImagePod:GraphData", 1}, "Content"}]]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 NamespaceBox["WolframAlphaQueryResults",
  DynamicModuleBox[{Typeset`q$$ = 
   "g2=Graph[{1\[UndirectedEdge]2, 3\[UndirectedEdge]4, 2\[UndirectedEdge]3, \
2\[UndirectedEdge]4, 2\[UndirectedEdge]5, 4\[UndirectedEdge]5}]", 
   Typeset`opts$$ = {
   AppearanceElements -> {"Extrusion", "Warnings", "Assumptions", "Pods"}, 
    Asynchronous -> All, 
    Method -> {
     "ExtrusionChosen" -> {"ImagePod:GraphData", "Image", 1, 1, "Content"}, 
      "Formats" -> {"cell", "minput", "moutput", "msound", "dataformats"}}}, 
   Typeset`elements$$ = {"Extrusion", "Warnings", "Assumptions", "Pods"}, 
   Typeset`pod1$$ = XMLElement[
   "pod", {"title" -> "Input interpretation", "scanner" -> "Identity", "id" -> 
     "Input", "position" -> "100", "error" -> "false", "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement[
       "minput", {}, {
        "Graph[{UndirectedEdge[1, 2], UndirectedEdge[3, 4], UndirectedEdge[2, \
3], UndirectedEdge[2, 4], UndirectedEdge[2, 5], UndirectedEdge[4, 5]}]"}], 
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             FormBox[
              StyleBox[
               TemplateBox[{
                 TagBox[
                  GridBox[{{
                    PaneBox[
                    StyleBox[
                    TagBox[
                    GridBox[{{
                    StyleBox[
                    RowBox[{"1", "\[Rule]", "2"}], {
                    LineIndent -> 0, LineSpacing -> {0.9, 0, 1.5}}], 
                    StyleBox[
                    RowBox[{"3", "\[Rule]", "4"}], {
                    LineIndent -> 0, LineSpacing -> {0.9, 0, 1.5}}], 
                    StyleBox[
                    RowBox[{"2", "\[Rule]", "3"}], {
                    LineIndent -> 0, LineSpacing -> {0.9, 0, 1.5}}], 
                    StyleBox[
                    RowBox[{"2", "\[Rule]", "4"}], {
                    LineIndent -> 0, LineSpacing -> {0.9, 0, 1.5}}], 
                    StyleBox[
                    RowBox[{"2", "\[Rule]", "5"}], {
                    LineIndent -> 0, LineSpacing -> {0.9, 0, 1.5}}], 
                    StyleBox[
                    RowBox[{"4", "\[Rule]", "5"}], {
                    LineIndent -> 0, LineSpacing -> {0.9, 0, 1.5}}]}}, 
                    GridBoxBackground -> {"Columns" -> {
                    GrayLevel[0.949], 
                    GrayLevel[0.949], 
                    GrayLevel[0.949], 
                    GrayLevel[0.949], 
                    GrayLevel[0.949], 
                    GrayLevel[0.949]}, "Rows" -> {{None}}}, 
                    GridBoxItemSize -> {
                    "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                    ColumnsEqual -> False, RowsEqual -> False, 
                    GridBoxDividers -> {"Columns" -> {
                    GrayLevel[0.84], 
                    GrayLevel[0.84], 
                    GrayLevel[0.84], 
                    GrayLevel[0.84], 
                    GrayLevel[0.84], 
                    GrayLevel[0.84], 
                    GrayLevel[0.84]}, "Rows" -> {{
                    GrayLevel[0.84]}}, 
                    "RowsIndexed" -> {
                    1 -> GrayLevel[0.84], -1 -> GrayLevel[0.84]}}, 
                    GridBoxSpacings -> {
                    "Columns" -> {2, 2, 2, 2, 2, 2, 2}, "Rows" -> {{1}}}, 
                    GridBoxAlignment -> {
                    "Columns" -> {{Left}}, "Rows" -> {{Baseline}}}, 
                    AllowScriptLevelChange -> False, BaselinePosition -> 1], 
                    Global`TagBoxWrapper["Separator" -> " | "]], 
                    LineSpacing -> {1, 0, 1.5}, LineIndent -> 0], 
                    BaselinePosition -> Center]}}, 
                   GridBoxItemSize -> {
                    "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                   ColumnsEqual -> False, RowsEqual -> False, 
                   GridBoxSpacings -> {"Columns" -> {{
                    AbsoluteThickness[-1]}}, "Rows" -> {{0}}}, 
                   AllowScriptLevelChange -> False], 
                  Global`TagBoxWrapper["Separator" -> " | "]], "\"  \"", 
                 StyleBox[
                  
                  RowBox[{
                   "\"(\"", "\[NoBreak]", "\"undirected graph\"", 
                    "\[NoBreak]", "\")\""}], {
                   GrayLevel[0.6], 
                   LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                   0}, StripOnInput -> False]}, "RowDefault"], LineIndent -> 
               0], TraditionalForm], 
             PolynomialForm[#, TraditionalOrder -> False]& ], 
            TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,minput,computabledata,formatteddata"}]}]}], 
   Typeset`pod2$$ = XMLElement[
   "pod", {"title" -> "Image", "scanner" -> "Data", "id" -> 
     "ImagePod:GraphData", "position" -> "200", "error" -> "false", 
     "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            GraphicsBox[
             TagBox[
              
              GraphicsComplexBox[{{0., 0.8337821433518159}, {
               1.169249594960148, 0.8328776390685}, {1.801892138045322, 0.}, {
               2.1058497624792407`, 0.8308974524214688}, {1.8062468928473665`,
                1.6635722249266855`}}, {{
                 GrayLevel[0.5], 
                 LineBox[{{1, 2}, {2, 3}, {2, 4}, {2, 5}, {3, 4}, {4, 5}}]}, {
                 InsetBox[
                  FormBox[
                   FrameBox[
                   "1", Background -> RGBColor[1, 1, 0.8], FrameStyle -> 
                    RGBColor[0.94, 0.85, 0.36], FrameMargins -> Inherited, 
                    StripOnInput -> False], TraditionalForm], 1], 
                 InsetBox[
                  FormBox[
                   FrameBox[
                   "2", Background -> RGBColor[1, 1, 0.8], FrameStyle -> 
                    RGBColor[0.94, 0.85, 0.36], FrameMargins -> Inherited, 
                    StripOnInput -> False], TraditionalForm], 2], 
                 InsetBox[
                  FormBox[
                   FrameBox[
                   "3", Background -> RGBColor[1, 1, 0.8], FrameStyle -> 
                    RGBColor[0.94, 0.85, 0.36], FrameMargins -> Inherited, 
                    StripOnInput -> False], TraditionalForm], 3], 
                 InsetBox[
                  FormBox[
                   FrameBox[
                   "4", Background -> RGBColor[1, 1, 0.8], FrameStyle -> 
                    RGBColor[0.94, 0.85, 0.36], FrameMargins -> Inherited, 
                    StripOnInput -> False], TraditionalForm], 4], 
                 InsetBox[
                  FormBox[
                   FrameBox[
                   "5", Background -> RGBColor[1, 1, 0.8], FrameStyle -> 
                    RGBColor[0.94, 0.85, 0.36], FrameMargins -> Inherited, 
                    StripOnInput -> False], TraditionalForm], 5]}}, {}], 
              Annotation[#, 
               VertexCoordinateRules -> {{0., 0.8337821433518159}, {
                1.169249594960148, 0.8328776390685}, {1.801892138045322, 
                0.}, {2.1058497624792407`, 0.8308974524214688}, {
                1.8062468928473665`, 1.6635722249266855`}}]& ], {
             ImageSize -> {150}, FrameTicks -> None, PlotRange -> All, 
              PlotRangePadding -> Scaled[0.1], AspectRatio -> Automatic, 
              ImageSize -> NCache[{
                 Rational[19900, 99], {250}}, {201.010101010101, {250}}]}], 
            TraditionalForm]], "Output", {}]}], 
       XMLElement["dataformats", {}, {}]}], 
     XMLElement["states", {"count" -> "1"}, {
       XMLElement[
       "state", {
        "name" -> "More images", "input" -> 
         "ImagePod:GraphData__More images"}, {}]}]}], Typeset`pod3$$ = 
   XMLElement[
   "pod", {"title" -> "Basic properties", "scanner" -> "Data", "id" -> 
     "BasicPropertiesPod:GraphData", "position" -> "300", "error" -> "false", 
     "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            StyleBox[
             TagBox[
              GridBox[{{
                 TagBox[
                  PaneBox[
                  "\"vertex count\"", 
                   BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                  Global`TagBoxWrapper["Label"]], 
                 TagBox["5", #& ]}, {
                 TagBox[
                  PaneBox[
                  "\"edge count\"", 
                   BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                  Global`TagBoxWrapper["Label"]], 
                 TagBox["6", #& ]}, {
                 TagBox[
                  PaneBox[
                  "\"number of connected components\"", 
                   BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                  Global`TagBoxWrapper["Label"]], 
                 TagBox["1", #& ]}}, 
               GridBoxAlignment -> {
                "Columns" -> {Left, Left}, "Rows" -> {{Baseline}}}, 
               AutoDelete -> False, 
               GridBoxBackground -> {"Columns" -> {None, None}}, 
               GridBoxFrame -> {"Columns" -> {{True}}, "Rows" -> {{True}}}, 
               GridBoxItemSize -> {
                "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
               GridBoxSpacings -> {"Columns" -> {{1.5}, 2}, "Rows" -> {{1}}}, 
               FrameStyle -> GrayLevel[0.84], BaselinePosition -> Automatic, 
               AllowScriptLevelChange -> False], "Grid"], 
             LineSpacing -> {0.9, 0, 1.5}, LineIndent -> 0, StripOnInput -> 
             False], TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata"}]}], 
     XMLElement["states", {"count" -> "1"}, {
       XMLElement[
       "state", {
        "name" -> "Show lists", "input" -> 
         "BasicPropertiesPod:GraphData__Show lists"}, {}]}]}], 
   Typeset`pod4$$ = XMLElement[
   "pod", {"title" -> "Graph features", "scanner" -> "Data", "id" -> 
     "PropertiesPod:GraphData", "position" -> "400", "error" -> "false", 
     "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            StyleBox[
             RowBox[{
               TagBox[
                TagBox["\"connected\"", 
                 Global`TagBoxWrapper[
                 "EntityClass" -> {GraphData, "Connected"}]], Identity], 
               StyleBox[
                RowBox[{"\[NoBreak]", 
                  PaneBox[
                  "\"  |  \"", BaselinePosition -> Baseline, BaseStyle -> 
                   GrayLevel[0.6]]}], AutoSpacing -> True], 
               TagBox[
                TagBox["\"noneulerian\"", 
                 Global`TagBoxWrapper[
                 "EntityClass" -> {GraphData, "Noneulerian"}]], Identity], 
               StyleBox[
                RowBox[{"\[NoBreak]", 
                  PaneBox[
                  "\"  |  \"", BaselinePosition -> Baseline, BaseStyle -> 
                   GrayLevel[0.6]]}], AutoSpacing -> True], 
               TagBox[
                TagBox["\"nonhamiltonian\"", 
                 Global`TagBoxWrapper[
                 "EntityClass" -> {GraphData, "Nonhamiltonian"}]], Identity], 
               StyleBox[
                RowBox[{"\[NoBreak]", 
                  PaneBox[
                  "\"  |  \"", BaselinePosition -> Baseline, BaseStyle -> 
                   GrayLevel[0.6]]}], AutoSpacing -> True], 
               TagBox[
                TagBox["\"perfect\"", 
                 Global`TagBoxWrapper[
                 "EntityClass" -> {GraphData, "Perfect"}]], Identity], 
               StyleBox[
                RowBox[{"\[NoBreak]", 
                  PaneBox[
                  "\"  |  \"", BaselinePosition -> Baseline, BaseStyle -> 
                   GrayLevel[0.6]]}], AutoSpacing -> True], 
               TagBox[
                TagBox["\"planar\"", 
                 Global`TagBoxWrapper[
                 "EntityClass" -> {GraphData, "Planar"}]], Identity], 
               StyleBox[
                RowBox[{"\[NoBreak]", 
                  PaneBox[
                  "\"  |  \"", BaselinePosition -> Baseline, BaseStyle -> 
                   GrayLevel[0.6]]}], AutoSpacing -> True], 
               TagBox[
                TagBox["\"simple\"", 
                 Global`TagBoxWrapper[
                 "EntityClass" -> {GraphData, "Simple"}]], Identity], 
               StyleBox[
                RowBox[{"\[NoBreak]", 
                  PaneBox[
                  "\"  |  \"", BaselinePosition -> Baseline, BaseStyle -> 
                   GrayLevel[0.6]]}], AutoSpacing -> True], 
               TagBox[
                TagBox["\"traceable\"", 
                 Global`TagBoxWrapper[
                 "EntityClass" -> {GraphData, "Traceable"}]], Identity], 
               StyleBox[
                RowBox[{"\[NoBreak]", 
                  PaneBox[
                  "\"  |  \"", BaselinePosition -> Baseline, BaseStyle -> 
                   GrayLevel[0.6]]}], AutoSpacing -> True], 
               TagBox[
                TagBox["\"undirected\"", 
                 Global`TagBoxWrapper[
                 "EntityClass" -> {GraphData, "Undirected"}]], Identity]}], 
             LinebreakAdjustments -> {1, 10, 0, 0, 100}, LineIndent -> 0], 
            TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {"plaintext,computabledata,formatteddata"}]}]}], 
   Typeset`pod5$$ = XMLElement[
   "pod", {"title" -> "Vertex degrees", "scanner" -> "Data", "id" -> 
     "DegreesPod:GraphData", "position" -> "500", "error" -> "false", 
     "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            StyleBox[
             RowBox[{
               TemplateBox[{"  ", "\"  \"", "1", 
                 StyleBox[
                  RowBox[{"\"(\"", "\[NoBreak]", 
                    
                    TemplateBox[{"  ", "\"  \"", "1", "\"vertex\""}, 
                    "RowWithSeparators"], "\[NoBreak]", "\")\""}], {
                   GrayLevel[0.6], 
                   LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                   0}, StripOnInput -> False]}, "RowWithSeparators"], 
               StyleBox[
                RowBox[{"\[NoBreak]", 
                  PaneBox[
                  "\"  |  \"", BaselinePosition -> Baseline, BaseStyle -> 
                   GrayLevel[0.6]]}], AutoSpacing -> True], 
               TemplateBox[{"  ", "\"  \"", "2", 
                 StyleBox[
                  RowBox[{"\"(\"", "\[NoBreak]", 
                    
                    TemplateBox[{"  ", "\"  \"", "2", "\"vertices\""}, 
                    "RowWithSeparators"], "\[NoBreak]", "\")\""}], {
                   GrayLevel[0.6], 
                   LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                   0}, StripOnInput -> False]}, "RowWithSeparators"], 
               StyleBox[
                RowBox[{"\[NoBreak]", 
                  PaneBox[
                  "\"  |  \"", BaselinePosition -> Baseline, BaseStyle -> 
                   GrayLevel[0.6]]}], AutoSpacing -> True], 
               TemplateBox[{"  ", "\"  \"", "3", 
                 StyleBox[
                  RowBox[{"\"(\"", "\[NoBreak]", 
                    
                    TemplateBox[{"  ", "\"  \"", "1", "\"vertex\""}, 
                    "RowWithSeparators"], "\[NoBreak]", "\")\""}], {
                   GrayLevel[0.6], 
                   LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                   0}, StripOnInput -> False]}, "RowWithSeparators"], 
               StyleBox[
                RowBox[{"\[NoBreak]", 
                  PaneBox[
                  "\"  |  \"", BaselinePosition -> Baseline, BaseStyle -> 
                   GrayLevel[0.6]]}], AutoSpacing -> True], 
               TemplateBox[{"  ", "\"  \"", "4", 
                 StyleBox[
                  RowBox[{"\"(\"", "\[NoBreak]", 
                    
                    TemplateBox[{"  ", "\"  \"", "1", "\"vertex\""}, 
                    "RowWithSeparators"], "\[NoBreak]", "\")\""}], {
                   GrayLevel[0.6], 
                   LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                   0}, StripOnInput -> False]}, "RowWithSeparators"]}], 
             LinebreakAdjustments -> {1, 10, 0, 0, 100}, LineIndent -> 0], 
            TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata"}]}]}], 
   Typeset`pod6$$ = XMLElement[
   "pod", {"title" -> "Topological properties", "scanner" -> "Data", "id" -> 
     "TopologicalPropertiesPod:GraphData", "position" -> "600", "error" -> 
     "false", "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            StyleBox[
             TagBox[
              GridBox[{{
                 TagBox[
                  PaneBox[
                  "\"radius\"", 
                   BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                  Global`TagBoxWrapper["Label"]], 
                 TagBox["1", #& ]}, {
                 TagBox[
                  PaneBox[
                  "\"diameter\"", 
                   BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                  Global`TagBoxWrapper["Label"]], 
                 TagBox["2", #& ]}, {
                 TagBox[
                  PaneBox[
                  "\"girth\"", 
                   BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                  Global`TagBoxWrapper["Label"]], 
                 TagBox["3", #& ]}, {
                 TagBox[
                  PaneBox[
                  "\"vertex connectivity\"", 
                   BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                  Global`TagBoxWrapper["Label"]], 
                 TagBox["1", #& ]}, {
                 TagBox[
                  PaneBox[
                  "\"edge connectivity\"", 
                   BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                  Global`TagBoxWrapper["Label"]], 
                 TagBox["1", #& ]}}, 
               GridBoxAlignment -> {
                "Columns" -> {Left, Left}, "Rows" -> {{Baseline}}}, 
               AutoDelete -> False, 
               GridBoxBackground -> {"Columns" -> {None, None}}, 
               GridBoxFrame -> {"Columns" -> {{True}}, "Rows" -> {{True}}}, 
               GridBoxItemSize -> {
                "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
               GridBoxSpacings -> {"Columns" -> {{1.5}, 2}, "Rows" -> {{1}}}, 
               FrameStyle -> GrayLevel[0.84], BaselinePosition -> Automatic, 
               AllowScriptLevelChange -> False], "Grid"], 
             LineSpacing -> {0.9, 0, 1.5}, LineIndent -> 0, StripOnInput -> 
             False], TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata"}]}], 
     XMLElement["states", {"count" -> "1"}, {
       XMLElement[
       "state", {
        "name" -> "More properties", "input" -> 
         "TopologicalPropertiesPod:GraphData__More properties"}, {}]}]}], 
   Typeset`pod7$$ = XMLElement[
   "pod", {"title" -> "Graph polynomials", "scanner" -> "Data", "id" -> 
     "GraphPolynomialPod:GraphData", "position" -> "700", "error" -> "false", 
     "numsubpods" -> "3"}, {
     XMLElement["subpod", {"title" -> "Characteristic polynomial"}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             RowBox[{
               RowBox[{"-", "x"}], " ", 
               RowBox[{"(", 
                 RowBox[{
                   SuperscriptBox["x", "4"], "-", 
                   RowBox[{"6", " ", 
                    SuperscriptBox["x", "2"]}], "-", 
                   RowBox[{"4", " ", "x"}], "+", "2"}], ")"}]}], Short], 
            TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,formuladata"}]}], 
     XMLElement["subpod", {"title" -> "Rank polynomial"}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             RowBox[{
               RowBox[{"(", 
                 RowBox[{"x", "+", "1"}], ")"}], " ", 
               RowBox[{"(", 
                 RowBox[{
                   RowBox[{
                    SuperscriptBox["x", "3"], " ", 
                    SuperscriptBox["y", "2"]}], "+", 
                   RowBox[{"5", " ", 
                    SuperscriptBox["x", "3"], " ", "y"}], "+", 
                   RowBox[{"8", " ", 
                    SuperscriptBox["x", "3"]}], "+", 
                   RowBox[{"2", " ", 
                    SuperscriptBox["x", "2"], " ", "y"}], "+", 
                   RowBox[{"10", " ", 
                    SuperscriptBox["x", "2"]}], "+", 
                   RowBox[{"5", " ", "x"}], "+", "1"}], ")"}]}], Short], 
            TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,formuladata"}]}], 
     XMLElement["subpod", {"title" -> "Tutte polynomial"}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             RowBox[{"x", " ", 
               RowBox[{"(", 
                 RowBox[{
                   SuperscriptBox["x", "3"], "+", 
                   RowBox[{"2", " ", 
                    SuperscriptBox["x", "2"]}], "+", 
                   RowBox[{"2", " ", "x", " ", "y"}], "+", "x", "+", 
                   SuperscriptBox["y", "2"], "+", "y"}], ")"}]}], Short], 
            TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,formuladata"}]}], 
     XMLElement["states", {"count" -> "1"}, {
       XMLElement[
       "state", {
        "name" -> "More polynomials", "input" -> 
         "GraphPolynomialPod:GraphData__More polynomials"}, {}]}]}], 
   Typeset`pod8$$ = XMLElement[
   "pod", {"title" -> "Coloring properties", "scanner" -> "Data", "id" -> 
     "ColoringsPod:GraphData", "position" -> "800", "error" -> "false", 
     "numsubpods" -> "3"}, {
     XMLElement["subpod", {"title" -> "Chromatic number"}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox["3", #& ], TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata"}]}], 
     XMLElement["subpod", {"title" -> "Edge chromatic number"}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox["4", #& ], TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata"}]}], 
     XMLElement["subpod", {"title" -> "Chromatic polynomial"}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             RowBox[{
               SuperscriptBox[
                RowBox[{"(", 
                  RowBox[{"x", "-", "2"}], ")"}], "2"], " ", 
               SuperscriptBox[
                RowBox[{"(", 
                  RowBox[{"x", "-", "1"}], ")"}], "2"], " ", "x"}], Identity],
             TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,formuladata"}]}]}], 
   Typeset`pod9$$ = XMLElement[
   "pod", {"title" -> "Spectrum", "scanner" -> "Data", "id" -> 
     "SpectrumPod:GraphData", "position" -> "900", "error" -> "false", 
     "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> True, "string" -> False}, {
         Cell[
          BoxData[
           FormBox[
            TemplateBox[{"\[ThinSpace]", "\" \"", 
              SuperscriptBox[
               TagBox[
                TagBox[
                 GridBox[{{
                    FormBox[
                    TagBox[
                    FormBox[
                    TemplateBox[{
                    TemplateBox[{
                    StyleBox[
                    "\"root of  \"", 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, 
                    GrayLevel[0.6], StripOnInput -> False]}, "RowDefault"], 
                    RowBox[{"2", "-", 
                    RowBox[{"4", " ", "x"}], "-", 
                    RowBox[{"6", " ", 
                    SuperscriptBox["x", "2"]}], "+", 
                    SuperscriptBox["x", "4"]}], 
                    TemplateBox[{
                    StyleBox[
                    "\"  near  \"", 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, 
                    GrayLevel[0.6], StripOnInput -> False]}, "RowDefault"], 
                    RowBox[{"x", "\[LongEqual]", 
                    RowBox[{"-", "1.7491175477465217`"}]}]}, "RowDefault"], 
                    TraditionalForm], Format[#, TraditionalForm]& ], 
                    TraditionalForm]}}, AutoDelete -> False, 
                  GridBoxFrame -> {
                   "ColumnsIndexed" -> {{{1, -1}, {1, -1}} -> True}}, 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                  FrameStyle -> GrayLevel[0.84], BaselinePosition -> 1], 
                 "Grid"], HoldForm], "1"], 
              SuperscriptBox[
               TagBox[
                TagBox[
                 GridBox[{{
                    FormBox[
                    TagBox[
                    FormBox[
                    TemplateBox[{
                    TemplateBox[{
                    StyleBox[
                    "\"root of  \"", 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, 
                    GrayLevel[0.6], StripOnInput -> False]}, "RowDefault"], 
                    RowBox[{"2", "-", 
                    RowBox[{"4", " ", "x"}], "-", 
                    RowBox[{"6", " ", 
                    SuperscriptBox["x", "2"]}], "+", 
                    SuperscriptBox["x", "4"]}], 
                    TemplateBox[{
                    StyleBox[
                    "\"  near  \"", 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, 
                    GrayLevel[0.6], StripOnInput -> False]}, "RowDefault"], 
                    RowBox[{"x", "\[LongEqual]", 
                    RowBox[{"-", "1.271330370297698`"}]}]}, "RowDefault"], 
                    TraditionalForm], Format[#, TraditionalForm]& ], 
                    TraditionalForm]}}, AutoDelete -> False, 
                  GridBoxFrame -> {
                   "ColumnsIndexed" -> {{{1, -1}, {1, -1}} -> True}}, 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                  FrameStyle -> GrayLevel[0.84], BaselinePosition -> 1], 
                 "Grid"], HoldForm], "1"], 
              SuperscriptBox[
               TagBox["0", HoldForm], "1"], 
              SuperscriptBox[
               TagBox[
                TagBox[
                 GridBox[{{
                    FormBox[
                    TagBox[
                    FormBox[
                    TemplateBox[{
                    TemplateBox[{
                    StyleBox[
                    "\"root of  \"", 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, 
                    GrayLevel[0.6], StripOnInput -> False]}, "RowDefault"], 
                    RowBox[{"2", "-", 
                    RowBox[{"4", " ", "x"}], "-", 
                    RowBox[{"6", " ", 
                    SuperscriptBox["x", "2"]}], "+", 
                    SuperscriptBox["x", "4"]}], 
                    TemplateBox[{
                    StyleBox[
                    "\"  near  \"", 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, 
                    GrayLevel[0.6], StripOnInput -> False]}, "RowDefault"], 
                    RowBox[{"x", "\[LongEqual]", "0.33490398537342664`"}]}, 
                    "RowDefault"], TraditionalForm], 
                    Format[#, TraditionalForm]& ], TraditionalForm]}}, 
                  AutoDelete -> False, 
                  GridBoxFrame -> {
                   "ColumnsIndexed" -> {{{1, -1}, {1, -1}} -> True}}, 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                  FrameStyle -> GrayLevel[0.84], BaselinePosition -> 1], 
                 "Grid"], HoldForm], "1"], 
              SuperscriptBox[
               TagBox[
                TagBox[
                 GridBox[{{
                    FormBox[
                    TagBox[
                    FormBox[
                    TemplateBox[{
                    TemplateBox[{
                    StyleBox[
                    "\"root of  \"", 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, 
                    GrayLevel[0.6], StripOnInput -> False]}, "RowDefault"], 
                    RowBox[{"2", "-", 
                    RowBox[{"4", " ", "x"}], "-", 
                    RowBox[{"6", " ", 
                    SuperscriptBox["x", "2"]}], "+", 
                    SuperscriptBox["x", "4"]}], 
                    TemplateBox[{
                    StyleBox[
                    "\"  near  \"", 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0, 
                    GrayLevel[0.6], StripOnInput -> False]}, "RowDefault"], 
                    RowBox[{"x", "\[LongEqual]", "2.685543932670793`"}]}, 
                    "RowDefault"], TraditionalForm], 
                    Format[#, TraditionalForm]& ], TraditionalForm]}}, 
                  AutoDelete -> False, 
                  GridBoxFrame -> {
                   "ColumnsIndexed" -> {{{1, -1}, {1, -1}} -> True}}, 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                  FrameStyle -> GrayLevel[0.84], BaselinePosition -> 1], 
                 "Grid"], HoldForm], "1"]}, "RowWithSeparators"], 
            TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,formuladata"}]}], 
     XMLElement["states", {"count" -> "1"}, {
       XMLElement[
       "state", {
        "name" -> "Approximate form", "input" -> 
         "SpectrumPod:GraphData__Approximate form"}, {}]}]}], 
   Typeset`pod10$$ = XMLElement[
   "pod", {"title" -> "Associated matrices", "scanner" -> "Data", "id" -> 
     "AssociatedMatricesPod:GraphData", "position" -> "1000", "error" -> 
     "false", "numsubpods" -> "2"}, {
     XMLElement["subpod", {"title" -> "Adjacency matrix"}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             RowBox[{"(", "\[NoBreak]", 
               
               GridBox[{{"0", "1", "0", "0", "0"}, {
                 "1", "0", "1", "1", "1"}, {"0", "1", "0", "1", "0"}, {
                 "0", "1", "1", "0", "1"}, {"0", "1", "0", "1", "0"}}, 
                RowSpacings -> 1, ColumnSpacings -> 1, RowAlignments -> 
                Baseline, ColumnAlignments -> Center], "\[NoBreak]", ")"}], 
             Identity], TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,formuladata"}]}], 
     XMLElement["subpod", {"title" -> "Incidence matrix"}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             RowBox[{"(", "\[NoBreak]", 
               
               GridBox[{{"1", "0", "0", "0", "0", "0"}, {
                 "1", "1", "1", "1", "0", "0"}, {
                 "0", "1", "0", "0", "1", "0"}, {
                 "0", "0", "1", "0", "1", "1"}, {
                 "0", "0", "0", "1", "0", "1"}}, RowSpacings -> 1, 
                ColumnSpacings -> 1, RowAlignments -> Baseline, 
                ColumnAlignments -> Center], "\[NoBreak]", ")"}], Identity], 
            TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,formuladata"}]}], 
     XMLElement["states", {"count" -> "1"}, {
       XMLElement[
       "state", {
        "name" -> "More matrices", "input" -> 
         "AssociatedMatricesPod:GraphData__More matrices"}, {}]}]}], 
   Typeset`pod11$$ = XMLElement[
   "pod", {"title" -> "Graph indices", "scanner" -> "Data", "id" -> 
     "GraphIndicesPod:GraphData", "position" -> "1100", "error" -> "false", 
     "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            StyleBox[
             TagBox[
              GridBox[{{
                 TagBox[
                  PaneBox[
                  "\"Hosoya index\"", 
                   BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                  Global`TagBoxWrapper["Label"]], 
                 TagBox["0", #& ]}, {
                 TagBox[
                  PaneBox[
                  "\"Kirchhoff index\"", 
                   BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                  Global`TagBoxWrapper["Label"]], 
                 TagBox["9.75", 
                  Global`TagBoxWrapper["StringBoxes" -> "9.75"]]}, {
                 TagBox[
                  PaneBox[
                  "\"stability index\"", 
                   BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                  Global`TagBoxWrapper["Label"]], 
                 TagBox["4", #& ]}, {
                 TagBox[
                  PaneBox[
                  "\"Wiener index\"", 
                   BaseStyle -> {{
                    BaselinePosition -> Baseline, FontColor -> 
                    GrayLevel[0.3]}, LineSpacing -> {0.9, 0, 1.5}, 
                    LinebreakAdjustments -> {1, 10, 10000, 0, 100}, 
                    TextAlignment -> Left}, BaselinePosition -> Baseline], 
                  Global`TagBoxWrapper["Label"]], 
                 TagBox["14", #& ]}}, 
               GridBoxAlignment -> {
                "Columns" -> {Left, Left}, "Rows" -> {{Baseline}}}, 
               AutoDelete -> False, 
               GridBoxBackground -> {"Columns" -> {None, None}}, 
               GridBoxFrame -> {"Columns" -> {{True}}, "Rows" -> {{True}}}, 
               GridBoxItemSize -> {
                "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
               GridBoxSpacings -> {"Columns" -> {{1.5}, 2}, "Rows" -> {{1}}}, 
               FrameStyle -> GrayLevel[0.84], BaselinePosition -> Automatic, 
               AllowScriptLevelChange -> False], "Grid"], 
             LineSpacing -> {0.9, 0, 1.5}, LineIndent -> 0, StripOnInput -> 
             False], TraditionalForm]], "Output", {}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,computabledata,formatteddata,numberdata"}]}], 
     XMLElement["states", {"count" -> "1"}, {
       XMLElement[
       "state", {
        "name" -> "More indices", "input" -> 
         "GraphIndicesPod:GraphData__More indices"}, {}]}]}], 
   Typeset`aux1$$ = {True, False, {False}, True}, Typeset`aux2$$ = {
   True, False, {False}, True}, Typeset`aux3$$ = {True, False, {False}, True},
    Typeset`aux4$$ = {True, False, {False}, True}, Typeset`aux5$$ = {
   True, False, {False}, True}, Typeset`aux6$$ = {True, False, {False}, True},
    Typeset`aux7$$ = {True, False, {False}, True}, Typeset`aux8$$ = {
   True, False, {False}, True}, Typeset`aux9$$ = {True, False, {False}, True},
    Typeset`aux10$$ = {True, False, {False}, True}, Typeset`aux11$$ = {
   True, False, {False}, True}, Typeset`asyncpods$$ = {}, Typeset`nonpods$$ = {
    XMLElement["warnings", {"count" -> "1"}, {
      XMLElement[
      "reinterpret", {
       "text" -> "Using closest Wolfram|Alpha interpretation:", "new" -> 
        "1\[UndirectedEdge]2, 3\[UndirectedEdge]4, 2\[UndirectedEdge]3, 2\
\[UndirectedEdge]4, 2\[UndirectedEdge]5, 4\[UndirectedEdge]5", "score" -> 
        "0.69697", "level" -> "high"}, {}]}], 
    XMLElement["sources", {"count" -> "1"}, {
      XMLElement[
      "source", {
       "url" -> 
        "http://www.wolframalpha.com/sources/GraphDataSourceInformationNotes.\
html", "text" -> "Graph data"}, {}]}]}, Typeset`initdone$$ = True, 
   Typeset`queryinfo$$ = {
   "success" -> "true", "error" -> "false", "numpods" -> "11", "datatypes" -> 
    "Graph", "timedout" -> "", "timedoutpods" -> "", "timing" -> "11.651", 
    "parsetiming" -> "0.576", "parsetimedout" -> "false", "recalculate" -> "",
     "id" -> "MSPa2201hh23bf30012d63600004d9a516e311786a3", "host" -> 
    "http://www3.wolframalpha.com", "server" -> "46", "related" -> "", 
    "version" -> "2.6"}, Typeset`sessioninfo$$ = {
   "TimeZone" -> 3., 
    "Date" -> {2015, 3, 17, 8, 10, 33.8123309`9.28165000964262}, "Line" -> 37,
     "SessionID" -> 26708331447338383811}, Typeset`showpods$$ = {1, 2, 3, 4, 
   5, 6, 7, 8, 9, 10, 11}, Typeset`failedpods$$ = {}, Typeset`chosen$$ = {
   "ImagePod:GraphData", "Image", 1, 1, "Content"}, Typeset`open$$ = False, 
   Typeset`newq$$ = 
   "g2=Graph[{1\[UndirectedEdge]2, 3\[UndirectedEdge]4, 2\[UndirectedEdge]3, \
2\[UndirectedEdge]4, 2\[UndirectedEdge]5, 4\[UndirectedEdge]5}]"}, 
   DynamicBox[ToBoxes[
     AlphaIntegration`FormatAlphaResults[
      Dynamic[{
       1, {Typeset`pod1$$, Typeset`pod2$$, Typeset`pod3$$, Typeset`pod4$$, 
         Typeset`pod5$$, Typeset`pod6$$, Typeset`pod7$$, Typeset`pod8$$, 
         Typeset`pod9$$, Typeset`pod10$$, Typeset`pod11$$}, {
        Typeset`aux1$$, Typeset`aux2$$, Typeset`aux3$$, Typeset`aux4$$, 
         Typeset`aux5$$, Typeset`aux6$$, Typeset`aux7$$, Typeset`aux8$$, 
         Typeset`aux9$$, Typeset`aux10$$, Typeset`aux11$$}, Typeset`chosen$$, 
        Typeset`open$$, Typeset`elements$$, Typeset`q$$, Typeset`opts$$, 
        Typeset`nonpods$$, Typeset`queryinfo$$, Typeset`sessioninfo$$, 
        Typeset`showpods$$, Typeset`failedpods$$, Typeset`newq$$}]], 
     StandardForm],
    ImageSizeCache->{292., {48., 18.}},
    TrackedSymbols:>{Typeset`showpods$$, Typeset`failedpods$$}],
   DynamicModuleValues:>{},
   Initialization:>If[
     Not[Typeset`initdone$$], Null; WolframAlphaClient`Private`doAsyncUpdates[
       Hold[{
        Typeset`pod1$$, Typeset`pod2$$, Typeset`pod3$$, Typeset`pod4$$, 
         Typeset`pod5$$, Typeset`pod6$$, Typeset`pod7$$, Typeset`pod8$$, 
         Typeset`pod9$$, Typeset`pod10$$, Typeset`pod11$$}], 
       Typeset`asyncpods$$, 
       Dynamic[Typeset`failedpods$$]]; Typeset`asyncpods$$ = {}; 
     Typeset`initdone$$ = True],
   SynchronousInitialization->False],
  BaseStyle->{Deployed -> True},
  DeleteWithContents->True,
  Editable->False,
  SelectWithContents->True]], "WolframAlphaShortInput"],

Cell[BoxData[
 InterpretationBox[
  FrameBox[
   StyleBox[
    FormBox[
     GraphicsBox[
      TagBox[
       GraphicsComplexBox[{{0., 0.8337821433518159}, {1.169249594960148, 
        0.8328776390685}, {1.801892138045322, 0.}, {2.1058497624792407`, 
        0.8308974524214688}, {1.8062468928473665`, 1.6635722249266855`}}, {
         {GrayLevel[0.5], 
          LineBox[{{1, 2}, {2, 3}, {2, 4}, {2, 5}, {3, 4}, {4, 5}}]}, {
          InsetBox[
           FrameBox["1",
            Background->RGBColor[1, 1, 0.8],
            FrameStyle->RGBColor[0.94, 0.85, 0.36],
            StripOnInput->False], 1], InsetBox[
           FrameBox["2",
            Background->RGBColor[1, 1, 0.8],
            FrameStyle->RGBColor[0.94, 0.85, 0.36],
            StripOnInput->False], 2], InsetBox[
           FrameBox["3",
            Background->RGBColor[1, 1, 0.8],
            FrameStyle->RGBColor[0.94, 0.85, 0.36],
            StripOnInput->False], 3], InsetBox[
           FrameBox["4",
            Background->RGBColor[1, 1, 0.8],
            FrameStyle->RGBColor[0.94, 0.85, 0.36],
            StripOnInput->False], 4], InsetBox[
           FrameBox["5",
            Background->RGBColor[1, 1, 0.8],
            FrameStyle->RGBColor[0.94, 0.85, 0.36],
            StripOnInput->False], 5]}}],
       Annotation[#, 
        VertexCoordinateRules -> {{0., 0.8337821433518159}, {
         1.169249594960148, 0.8328776390685}, {1.801892138045322, 0.}, {
         2.1058497624792407`, 0.8308974524214688}, {1.8062468928473665`, 
         1.6635722249266855`}}]& ],
      AspectRatio->Automatic,
      FrameTicks->None,
      ImageSize->{150},
      PlotRange->All,
      PlotRangePadding->Scaled[0.1]],
     TraditionalForm], "Output",
    ScriptLevel->0,
    FontFamily->"Times",
    FontSize->14,
    Background->None],
   BaseStyle->{Plain},
   FrameMargins->10,
   FrameStyle->GrayLevel[0.85],
   RoundingRadius->5,
   StripOnInput->False],
  WolframAlphaResult[
  "g2=Graph[{1\[UndirectedEdge]2, 3\[UndirectedEdge]4, 2\[UndirectedEdge]3, 2\
\[UndirectedEdge]4, 2\[UndirectedEdge]5, 4\[UndirectedEdge]5}]", {{
    "ImagePod:GraphData", 1}, "Content"}]]], "Output"]
}, Open  ]],

Cell[BoxData[
 NamespaceBox["WolframAlphaQueryNoResults",
  DynamicModuleBox[{Typeset`q$$ = 
   "GraphUnion[Graph[{1\[UndirectedEdge]2, 3\[UndirectedEdge]4, 2\
\[UndirectedEdge]3, 2\[UndirectedEdge]4, 1\[UndirectedEdge]5, 4\
\[UndirectedEdge]5}], Graph[{1\[UndirectedEdge]2, 3\[UndirectedEdge]4, 2\
\[UndirectedEdge]3, 2\[UndirectedEdge]4, 2\[UndirectedEdge]5, 4\
\[UndirectedEdge]5}]]", Typeset`newq$$ = 
   "GraphUnion[Graph[{1\[UndirectedEdge]2, 3\[UndirectedEdge]4, 2\
\[UndirectedEdge]3, 2\[UndirectedEdge]4, 1\[UndirectedEdge]5, 4\
\[UndirectedEdge]5}], Graph[{1\[UndirectedEdge]2, 3\[UndirectedEdge]4, 2\
\[UndirectedEdge]3, 2\[UndirectedEdge]4, 2\[UndirectedEdge]5, 4\
\[UndirectedEdge]5}]]"}, 
   FrameBox[
    TagBox[GridBox[{
       {
        InputFieldBox[Dynamic[Typeset`newq$$], String,
         Appearance->None,
         BaseStyle->{"CalculateInput"},
         ContinuousAction->True,
         Enabled->True,
         FieldSize->{{1, 40}, {1, 
            DirectedInfinity[1]}},
         TrapSelection->False], "\[SpanFromLeft]"},
       {
        StyleBox[
         TemplateBox[{"\"(\"",DynamicBox[
            ToBoxes[
             FEPrivate`FrontEndResource["WAStrings", "NoInterpretations"], 
             StandardForm]],"\")\""},
          "RowDefault"], "DialogStyle",
         StripOnInput->False,
         FontColor->GrayLevel[0.5]], 
        TagBox[
         TooltipBox[
          ButtonBox[
           
           DynamicBox[FEPrivate`FrontEndResource[
            "WABitmaps", "QuestionMarkSmallIcon"],
            ImageSizeCache->{13., {4., 9.}}],
           Appearance->None,
           BaseStyle->{ShowStringCharacters -> False},
           ButtonFunction:>(Quiet[
              WolframAlpha[]]; 
            WolframAlphaClient`Private`openSuggestionsDialog[
             "NoResults", 
              "GraphUnion[Graph[{1\[UndirectedEdge]2, 3\[UndirectedEdge]4, 2\
\[UndirectedEdge]3, 2\[UndirectedEdge]4, 1\[UndirectedEdge]5, 4\
\[UndirectedEdge]5}], Graph[{1\[UndirectedEdge]2, 3\[UndirectedEdge]4, 2\
\[UndirectedEdge]3, 2\[UndirectedEdge]4, 2\[UndirectedEdge]5, 4\
\[UndirectedEdge]5}]]"]),
           Evaluator->Automatic,
           Method->"Preemptive"],
          "\"Information, tips and feedback\"",
          TooltipStyle->"TextStyling"],
         Annotation[#, "Information, tips and feedback", "Tooltip"]& ]}
      },
      AutoDelete->False,
      BaselinePosition->{1, 1},
      FrameStyle->GrayLevel[0.85],
      GridBoxAlignment->{"Columns" -> {{Left}}},
      GridBoxDividers->{
       "Columns" -> {{False}}, "Rows" -> {False, {True}, False}},
      GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
     "Grid"],
    Alignment->Top,
    Background->Dynamic[
      FEPrivate`If[
       FEPrivate`And[
        FEPrivate`SameQ[
         FEPrivate`Head[Typeset`newq$$], String], 
        FEPrivate`UnsameQ[Typeset`q$$, Typeset`newq$$]], 
       RGBColor[1., 0.975, 0.95], 
       GrayLevel[1]]],
    BaselinePosition->Baseline,
    FrameStyle->GrayLevel[0.85],
    ImageSize->Automatic,
    RoundingRadius->5,
    StripOnInput->False],
   DynamicModuleValues:>{}],
  BaseStyle->{Deployed -> True},
  DeleteWithContents->True,
  Editable->False,
  SelectWithContents->True]], "WolframAlphaShortInput"],

Cell[BoxData[""], "Input",
 NumberMarks->False]
},
WindowSize->{1600, 818},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.0 for Microsoft Windows (64-bit) (September 9, 2014)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 614, 15, 31, "Input"],
Cell[2103, 52, 1496, 30, 206, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[3636, 87, 851, 22, 31, "Input"],
Cell[4490, 111, 332, 8, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[4859, 124, 1317, 36, 31, "Input"],
Cell[6179, 162, 2490, 56, 206, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[8706, 223, 989, 26, 52, "Input"],
Cell[9698, 251, 28, 0, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[9763, 256, 1245, 31, 52, "Input"],
Cell[11011, 289, 73, 2, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[11121, 296, 859, 26, 31, "Input"],
Cell[11983, 324, 2295, 47, 206, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[14315, 376, 1015, 26, 52, "Input"],
Cell[15333, 404, 1511, 31, 358, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[16881, 440, 1015, 26, 52, "Input"],
Cell[17899, 468, 9241, 193, 75, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[27177, 666, 85, 2, 31, "Input"],
Cell[27265, 670, 886, 24, 87, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[28188, 699, 40887, 872, 83, "WolframAlphaShortInput"],
Cell[69078, 1573, 2197, 57, 125, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[71312, 1635, 43054, 914, 83, "WolframAlphaShortInput"],
Cell[114369, 2551, 2160, 56, 159, "Output"]
}, Open  ]],
Cell[116544, 2610, 3268, 83, 83, "WolframAlphaShortInput"],
Cell[119815, 2695, 47, 1, 31, "Input"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature lwDLcOlzFPsOXAwMLduJ8uTH *)
