import InitE.FrontendStages.Globals.Output426
import InitE.FrontendStages.Declarations.Data426
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate405
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate426_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified426) =
        some globalOutput426 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal426 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified426) := by trivial
theorem globalException426_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified426) = none := by rfl
#print axioms globalTranslate426_eq
end InitE.FrontendStages.Declarations
