import InitE.FrontendStages.Globals.Output390
import InitE.FrontendStages.Declarations.Data390
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate374
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate390_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified390) =
        some globalOutput390 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal390 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified390) := by trivial
theorem globalException390_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified390) = none := by rfl
#print axioms globalTranslate390_eq
end InitE.FrontendStages.Declarations
