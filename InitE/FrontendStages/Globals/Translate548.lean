import InitE.FrontendStages.Globals.Output548
import InitE.FrontendStages.Declarations.Data548
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate532
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate548_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified548) =
        some globalOutput548 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal548 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified548) := by trivial
theorem globalException548_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified548) = none := by rfl
#print axioms globalTranslate548_eq
end InitE.FrontendStages.Declarations
