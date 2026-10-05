import InitE.FrontendStages.Globals.Output646
import InitE.FrontendStages.Declarations.Data646
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate630
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate646_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified646) =
        some globalOutput646 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal646 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified646) := by trivial
theorem globalException646_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified646) = none := by rfl
#print axioms globalTranslate646_eq
end InitE.FrontendStages.Declarations
