import InitE.FrontendStages.Globals.Output50
import InitE.FrontendStages.Declarations.Data50
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate33
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate50_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified50) =
        some globalOutput50 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal50 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified50) := by trivial
theorem globalException50_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified50) = none := by rfl
#print axioms globalTranslate50_eq
end InitE.FrontendStages.Declarations
