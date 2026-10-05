import InitE.FrontendStages.Globals.Output605
import InitE.FrontendStages.Declarations.Data605
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate589
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate605_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified605) =
        some globalOutput605 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal605 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified605) := by trivial
theorem globalException605_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified605) = none := by rfl
#print axioms globalTranslate605_eq
end InitE.FrontendStages.Declarations
