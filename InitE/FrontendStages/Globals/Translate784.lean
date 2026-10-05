import InitE.FrontendStages.Globals.Output784
import InitE.FrontendStages.Declarations.Data784
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate768
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate784_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified784) =
        some globalOutput784 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal784 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified784) := by trivial
theorem globalException784_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified784) = none := by rfl
#print axioms globalTranslate784_eq
end InitE.FrontendStages.Declarations
