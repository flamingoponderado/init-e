import InitE.FrontendStages.Globals.Output632
import InitE.FrontendStages.Declarations.Data632
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate607
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate632_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified632) =
        some globalOutput632 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal632 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified632) := by trivial
theorem globalException632_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified632) = none := by rfl
#print axioms globalTranslate632_eq
end InitE.FrontendStages.Declarations
