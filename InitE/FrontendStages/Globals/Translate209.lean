import InitE.FrontendStages.Globals.Output209
import InitE.FrontendStages.Declarations.Data209
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate193
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate209_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified209) =
        some globalOutput209 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal209 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified209) := by trivial
theorem globalException209_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified209) = none := by rfl
#print axioms globalTranslate209_eq
end InitE.FrontendStages.Declarations
