import InitE.FrontendStages.Globals.Output79
import InitE.FrontendStages.Declarations.Data79
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate63
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate79_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified79) =
        some globalOutput79 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal79 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified79) := by trivial
theorem globalException79_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified79) = none := by rfl
#print axioms globalTranslate79_eq
end InitE.FrontendStages.Declarations
