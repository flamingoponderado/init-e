import InitE.FrontendStages.Globals.Output288
import InitE.FrontendStages.Declarations.Data288
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate272
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate288_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified288) =
        some globalOutput288 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal288 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified288) := by trivial
theorem globalException288_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified288) = none := by rfl
#print axioms globalTranslate288_eq
end InitE.FrontendStages.Declarations
