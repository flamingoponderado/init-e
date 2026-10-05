import InitE.FrontendStages.Globals.Output241
import InitE.FrontendStages.Declarations.Data241
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate222
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate241_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified241) =
        some globalOutput241 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal241 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified241) := by trivial
theorem globalException241_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified241) = none := by rfl
#print axioms globalTranslate241_eq
end InitE.FrontendStages.Declarations
