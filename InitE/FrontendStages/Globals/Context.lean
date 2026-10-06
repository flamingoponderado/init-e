import InitE.FrontendStages.Declarations.Data1
import InitE.FrontendStages.Declarations.Data2
import InitE.FrontendStages.Declarations.Data5
import InitE.FrontendStages.Declarations.Data6
import InitE.FrontendStages.Declarations.Data38
import InitE.FrontendStages.Declarations.Data90
import InitE.FrontendStages.Declarations.Data91
import InitE.FrontendStages.Declarations.Data92
import InitE.FrontendStages.Declarations.Data99
import InitE.FrontendStages.Declarations.Data100
import InitE.FrontendStages.Declarations.Data147
import InitE.FrontendStages.Declarations.Data189
import InitE.FrontendStages.Declarations.Data190
import InitE.FrontendStages.Declarations.Data191
import InitE.FrontendStages.Declarations.Data240
import InitE.FrontendStages.Declarations.Data244
import InitE.FrontendStages.Declarations.Data245
import InitE.FrontendStages.Declarations.Data246
import InitE.FrontendStages.Declarations.Data247
import InitE.FrontendStages.Declarations.Data248
import InitE.FrontendStages.Declarations.Data351
import InitE.FrontendStages.Declarations.Data352
import InitE.FrontendStages.Declarations.Data353
import InitE.FrontendStages.Declarations.Data354
import InitE.FrontendStages.Declarations.Data355
import InitE.FrontendStages.Declarations.Data356
import InitE.FrontendStages.Declarations.Data406
import InitE.FrontendStages.Declarations.Data407
import InitE.FrontendStages.Declarations.Data408
import InitE.FrontendStages.Declarations.Data409
import InitE.FrontendStages.Declarations.Data410
import InitE.FrontendStages.Declarations.Data439
import InitE.FrontendStages.Declarations.Data440
import InitE.FrontendStages.Declarations.Data441
import InitE.FrontendStages.Declarations.Data442
import InitE.FrontendStages.Declarations.Data565
import InitE.FrontendStages.Declarations.Data566
import InitE.FrontendStages.Declarations.Data567
import InitE.FrontendStages.Declarations.Data568
import InitE.FrontendStages.Declarations.Data611
import InitE.FrontendStages.Declarations.Data612
import InitE.FrontendStages.Declarations.Data613
import InitE.FrontendStages.Declarations.Data614
import InitE.FrontendStages.Declarations.Data621
import InitE.FrontendStages.Declarations.Data622
import InitE.FrontendStages.Declarations.Data623
import InitE.FrontendStages.Declarations.Data624
import InitE.FrontendStages.Declarations.Data625
import InitE.FrontendStages.Declarations.Data650
import InitE.FrontendStages.Declarations.Data651
import InitE.FrontendStages.Declarations.Data652
import InitE.FrontendStages.Declarations.Data653
import InitE.FrontendStages.Declarations.Data654
import InitE.FrontendStages.Declarations.Data655
import InitE.FrontendStages.Declarations.Data656
import InitE.FrontendStages.Declarations.Data657
import InitE.FrontendStages.Declarations.Data658
import InitE.FrontendStages.Declarations.Data659
import InitE.FrontendStages.Declarations.Data660
import InitE.FrontendStages.Declarations.Data661
import InitE.FrontendStages.Declarations.Data662
import InitE.FrontendStages.Declarations.Data663
import InitE.FrontendStages.Declarations.Data664
import InitE.FrontendStages.Declarations.Data720
import InitE.FrontendStages.Declarations.Data731
import InitE.FrontendStages.Declarations.Data732
import InitE.FrontendStages.Declarations.Data733
import InitE.FrontendStages.Declarations.Data734
import InitE.FrontendStages.Declarations.Data735
import InitE.FrontendStages.Declarations.Data757
import InitE.FrontendStages.Declarations.Data758
import InitE.FrontendStages.Declarations.Data759
import InitE.FrontendStages.Declarations.Data793
import InitE.FrontendStages.Declarations.Data794
import InitE.FrontendStages.Declarations.Data795
import InitE.FrontendStages.Declarations.Data849
import InitE.FrontendStages.Declarations.Data884
import InitE.FrontendStages.Declarations.Data885
import InitE.FrontendStages.Declarations.Data886
import InitE.FrontendStages.Declarations.Data887
import InitE.FrontendStages.Declarations.Data888
import InitE.FrontendStages.Declarations.Data889
import InitE.FrontendStages.Declarations.Data890
import InitE.FrontendStages.Declarations.Data891
import InitE.FrontendStages.Declarations.Data892
import InitE.FrontendStages.Declarations.Data893
import InitE.FrontendStages.Declarations.Data894
import InitE.FrontendStages.Declarations.Data895
import InitE.FrontendStages.Declarations.Data896
import InitE.FrontendStages.Declarations.Data897
import InitE.FrontendStages.Declarations.Data898
import InitE.FrontendStages.Declarations.Data902
import InitE.FrontendStages.Declarations.Data927
import InitE.GlobalsComputation
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Declarations
open Flapjack
def globalDeclarations : List (Pancake.PanLang.DeclHOL 64) := [simplified1, simplified2, simplified5, simplified6, simplified38, simplified90, simplified91, simplified92, simplified99, simplified100, simplified147, simplified189, simplified190, simplified191, simplified240, simplified244, simplified245, simplified246, simplified247, simplified248, simplified351, simplified352, simplified353, simplified354, simplified355, simplified356, simplified406, simplified407, simplified408, simplified409, simplified410, simplified439, simplified440, simplified441, simplified442, simplified565, simplified566, simplified567, simplified568, simplified611, simplified612, simplified613, simplified614, simplified621, simplified622, simplified623, simplified624, simplified625, simplified650, simplified651, simplified652, simplified653, simplified654, simplified655, simplified656, simplified657, simplified658, simplified659, simplified660, simplified661, simplified662, simplified663, simplified664, simplified720, simplified731, simplified732, simplified733, simplified734, simplified735, simplified757, simplified758, simplified759, simplified793, simplified794, simplified795, simplified849, simplified884, simplified885, simplified886, simplified887, simplified888, simplified889, simplified890, simplified891, simplified892, simplified893, simplified894, simplified895, simplified896, simplified897, simplified898, simplified902, simplified927]
def globalInitial : PanGlobalsContextExact 64 :=
  { globals := HolFiniteMapExact.empty, globalsSize := 0,
    maxGlobalsSize := cakeBytesInWord 64 * BitVec.ofNat 64 93 }
def globalContext : PanGlobalsContextExact 64 :=
  (compileDecsExactHOL globalInitial globalDeclarations).2.2.2
def globalStart : Basis.Pure.MlString.MlString := Basis.Pure.MlString.ofString "main"
def globalNewStart : Basis.Pure.MlString.MlString := Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 97#8, 105#8, 110#8, 39#8]
end InitE.FrontendStages.Declarations
