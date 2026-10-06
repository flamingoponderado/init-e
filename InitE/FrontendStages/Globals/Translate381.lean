import InitE.FrontendStages.Globals.Output381
import InitE.FrontendStages.Declarations.Data381
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate365
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate381_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified381) =
        some globalOutput381 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal381 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified381) := by trivial
theorem globalException381_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified381) = none := by rfl
#print axioms globalTranslate381_eq
end InitE.FrontendStages.Declarations
