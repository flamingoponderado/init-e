import InitE.FrontendStages.Globals.Output130
import InitE.FrontendStages.Declarations.Data130
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate114
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate130_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified130) =
        some globalOutput130 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal130 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified130) := by trivial
theorem globalException130_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified130) = none := by rfl
#print axioms globalTranslate130_eq
end InitE.FrontendStages.Declarations
