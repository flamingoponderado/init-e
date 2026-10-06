import InitE.FrontendStages.Globals.Output95
import InitE.FrontendStages.Declarations.Data95
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate76
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate95_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified95) =
        some globalOutput95 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal95 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified95) := by trivial
theorem globalException95_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified95) = none := by rfl
#print axioms globalTranslate95_eq
end InitE.FrontendStages.Declarations
