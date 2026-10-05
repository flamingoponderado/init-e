import InitE.FrontendStages.Globals.Output370
import InitE.FrontendStages.Declarations.Data370
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate347
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate370_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified370) =
        some globalOutput370 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal370 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified370) := by trivial
theorem globalException370_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified370) = none := by rfl
#print axioms globalTranslate370_eq
end InitE.FrontendStages.Declarations
