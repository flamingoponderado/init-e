import InitE.FrontendStages.Globals.Output322
import InitE.FrontendStages.Declarations.Data322
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate306
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate322_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified322) =
        some globalOutput322 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal322 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified322) := by trivial
theorem globalException322_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified322) = none := by rfl
#print axioms globalTranslate322_eq
end InitE.FrontendStages.Declarations
