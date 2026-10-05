import InitE.FrontendStages.Globals.Output854
import InitE.FrontendStages.Declarations.Data854
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate837
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate854_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified854) =
        some globalOutput854 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal854 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified854) := by trivial
theorem globalException854_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified854) = none := by rfl
#print axioms globalTranslate854_eq
end InitE.FrontendStages.Declarations
