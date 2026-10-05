import InitE.FrontendStages.Globals.Output472
import InitE.FrontendStages.Declarations.Data472
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate456
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate472_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified472) =
        some globalOutput472 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal472 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified472) := by trivial
theorem globalException472_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified472) = none := by rfl
#print axioms globalTranslate472_eq
end InitE.FrontendStages.Declarations
