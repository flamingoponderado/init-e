import InitE.FrontendStages.Globals.Output369
import InitE.FrontendStages.Declarations.Data369
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate346
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate369_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified369) =
        some globalOutput369 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal369 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified369) := by trivial
theorem globalException369_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified369) = none := by rfl
#print axioms globalTranslate369_eq
end InitE.FrontendStages.Declarations
