import InitE.FrontendStages.Globals.Output77
import InitE.FrontendStages.Declarations.Data77
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate61
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate77_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified77) =
        some globalOutput77 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal77 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified77) := by trivial
theorem globalException77_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified77) = none := by rfl
#print axioms globalTranslate77_eq
end InitE.FrontendStages.Declarations
