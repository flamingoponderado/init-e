import InitE.FrontendStages.Globals.Output423
import InitE.FrontendStages.Declarations.Data423
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate402
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate423_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified423) =
        some globalOutput423 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal423 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified423) := by trivial
theorem globalException423_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified423) = none := by rfl
#print axioms globalTranslate423_eq
end InitE.FrontendStages.Declarations
