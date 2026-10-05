import InitE.FrontendStages.Globals.Output579
import InitE.FrontendStages.Declarations.Data579
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate559
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate579_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified579) =
        some globalOutput579 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal579 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified579) := by trivial
theorem globalException579_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified579) = none := by rfl
#print axioms globalTranslate579_eq
end InitE.FrontendStages.Declarations
