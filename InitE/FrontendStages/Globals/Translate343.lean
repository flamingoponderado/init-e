import InitE.FrontendStages.Globals.Output343
import InitE.FrontendStages.Declarations.Data343
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate327
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate343_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified343) =
        some globalOutput343 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal343 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified343) := by trivial
theorem globalException343_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified343) = none := by rfl
#print axioms globalTranslate343_eq
end InitE.FrontendStages.Declarations
