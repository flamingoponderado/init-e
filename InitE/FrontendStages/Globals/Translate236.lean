import InitE.FrontendStages.Globals.Output236
import InitE.FrontendStages.Declarations.Data236
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate218
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate236_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified236) =
        some globalOutput236 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal236 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified236) := by trivial
theorem globalException236_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified236) = none := by rfl
#print axioms globalTranslate236_eq
end InitE.FrontendStages.Declarations
