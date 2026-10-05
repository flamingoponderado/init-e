import InitE.FrontendStages.Globals.Output860
import InitE.FrontendStages.Declarations.Data860
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate843
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate860_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified860) =
        some globalOutput860 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal860 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified860) := by trivial
theorem globalException860_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified860) = none := by rfl
#print axioms globalTranslate860_eq
end InitE.FrontendStages.Declarations
