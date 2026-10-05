import InitE.FrontendStages.Globals.Output691
import InitE.FrontendStages.Declarations.Data691
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate675
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate691_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified691) =
        some globalOutput691 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal691 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified691) := by trivial
theorem globalException691_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified691) = none := by rfl
#print axioms globalTranslate691_eq
end InitE.FrontendStages.Declarations
