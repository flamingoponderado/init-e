import InitE.FrontendStages.Globals.Output490
import InitE.FrontendStages.Declarations.Data490
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate474
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate490_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified490) =
        some globalOutput490 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal490 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified490) := by trivial
theorem globalException490_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified490) = none := by rfl
#print axioms globalTranslate490_eq
end InitE.FrontendStages.Declarations
