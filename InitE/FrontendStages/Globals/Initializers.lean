import InitE.FrontendStages.Globals.InitializersData
import InitE.FrontendStages.Globals.HeaderFacts
import InitE.GlobalsComposition

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false

namespace InitE.FrontendStages.Declarations
open Flapjack Flapjack.Pancake.PanLang


theorem compileGlobals_eq : compileDecsExactHOL globalInitial globalDeclarations =
    (globalInitializers, [], [], globalContext) := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl

theorem renameGlobals_eq : fpermDecsHOL globalStart globalNewStart globalDeclarations = globalDeclarations := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl

theorem compileExceptions_eq (context : PanGlobalsContextExact 64) :
    compileDecsExactHOL context exceptionDeclarations = ([], [], exceptionDeclarations, context) := by
  simp only [exceptionDeclarations, simplified3, simplifiedData3, simplified105,
    simplifiedData105, simplified188, simplifiedData188, simplified223, simplifiedData223,
    simplified224, simplifiedData224, simplified243, simplifiedData243,
    simplified298, simplifiedData298, simplified350, simplifiedData350,
    simplified438, simplifiedData438, simplified883, simplifiedData883,
    declToHOL, compileDecsExactHOL]

theorem renameExceptions_eq : fpermDecsHOL globalStart globalNewStart exceptionDeclarations = exceptionDeclarations := by
  simp only [exceptionDeclarations, simplified3, simplifiedData3, simplified105,
    simplifiedData105, simplified188, simplifiedData188, simplified223, simplifiedData223,
    simplified224, simplifiedData224, simplified243, simplifiedData243,
    simplified298, simplifiedData298, simplified350, simplifiedData350,
    simplified438, simplifiedData438, simplified883, simplifiedData883,
    declToHOL, fpermDecsHOL]

#print axioms compileGlobals_eq
#print axioms renameGlobals_eq
#print axioms compileExceptions_eq
#print axioms renameExceptions_eq
end InitE.FrontendStages.Declarations
