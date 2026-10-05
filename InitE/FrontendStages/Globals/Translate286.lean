import InitE.FrontendStages.Globals.Output286
import InitE.FrontendStages.Declarations.Data286
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate270
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate286_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified286) =
        some globalOutput286 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal286 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified286) := by trivial
theorem globalException286_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified286) = none := by rfl
#print axioms globalTranslate286_eq
end InitE.FrontendStages.Declarations
