import InitE.CompactComputation
import InitE.FrontendStages.Globals.KernelContext
import InitE.FrontendStages.Globals.InitializersData
import InitE.FrontendStages.Globals.HeaderFacts
import InitE.GlobalsComposition

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitE.FrontendStages.Declarations
open Flapjack Flapjack.Pancake.PanLang


theorem compileGlobals_eq : compileDecsExactHOL globalInitial globalDeclarations =
    (globalInitializers, [], [], globalContext) := by
  rw [InitE.GlobalsKernelComputation.compileDecs_function_eq,
    globalDeclarations_structural_eq, globalInitializers_structural_eq,
    globalContext_structural_eq]
  kernel_rfl

theorem renameGlobals_eq : fpermDecsHOL globalStart globalNewStart globalDeclarations = globalDeclarations := by
  rw [InitE.GlobalsComputation.fpermDecs_eq_map, globalDeclarations_structural_eq]
  kernel_rfl

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
