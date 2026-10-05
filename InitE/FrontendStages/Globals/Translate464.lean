import InitE.FrontendStages.Globals.Output464
import InitE.FrontendStages.Declarations.Data464
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate448
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate464_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified464) =
        some globalOutput464 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal464 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified464) := by trivial
theorem globalException464_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified464) = none := by rfl
#print axioms globalTranslate464_eq
end InitE.FrontendStages.Declarations
