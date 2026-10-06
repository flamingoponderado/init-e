import InitE.FrontendStages.Globals.Output333
import InitE.FrontendStages.Declarations.Data333
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate317
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate333_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified333) =
        some globalOutput333 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal333 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified333) := by trivial
theorem globalException333_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified333) = none := by rfl
#print axioms globalTranslate333_eq
end InitE.FrontendStages.Declarations
