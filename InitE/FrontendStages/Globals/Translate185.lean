import InitE.FrontendStages.Globals.Output185
import InitE.FrontendStages.Declarations.Data185
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate169
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate185_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified185) =
        some globalOutput185 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal185 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified185) := by trivial
theorem globalException185_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified185) = none := by rfl
#print axioms globalTranslate185_eq
end InitE.FrontendStages.Declarations
