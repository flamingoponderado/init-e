import InitE.FrontendStages.Globals.Output162
import InitE.FrontendStages.Declarations.Data162
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate145
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate162_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified162) =
        some globalOutput162 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal162 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified162) := by trivial
theorem globalException162_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified162) = none := by rfl
#print axioms globalTranslate162_eq
end InitE.FrontendStages.Declarations
