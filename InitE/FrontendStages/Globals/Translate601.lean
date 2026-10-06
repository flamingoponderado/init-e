import InitE.FrontendStages.Globals.Output601
import InitE.FrontendStages.Declarations.Data601
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate585
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate601_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified601) =
        some globalOutput601 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal601 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified601) := by trivial
theorem globalException601_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified601) = none := by rfl
#print axioms globalTranslate601_eq
end InitE.FrontendStages.Declarations
