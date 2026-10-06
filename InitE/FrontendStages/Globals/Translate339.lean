import InitE.FrontendStages.Globals.Output339
import InitE.FrontendStages.Declarations.Data339
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate323
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate339_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified339) =
        some globalOutput339 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal339 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified339) := by trivial
theorem globalException339_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified339) = none := by rfl
#print axioms globalTranslate339_eq
end InitE.FrontendStages.Declarations
