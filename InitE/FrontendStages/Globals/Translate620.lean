import InitE.FrontendStages.Globals.Output620
import InitE.FrontendStages.Declarations.Data620
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate600
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate620_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified620) =
        some globalOutput620 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal620 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified620) := by trivial
theorem globalException620_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified620) = none := by rfl
#print axioms globalTranslate620_eq
end InitE.FrontendStages.Declarations
