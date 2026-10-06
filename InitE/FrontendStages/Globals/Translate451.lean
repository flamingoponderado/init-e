import InitE.FrontendStages.Globals.Output451
import InitE.FrontendStages.Declarations.Data451
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate430
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate451_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified451) =
        some globalOutput451 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal451 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified451) := by trivial
theorem globalException451_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified451) = none := by rfl
#print axioms globalTranslate451_eq
end InitE.FrontendStages.Declarations
