import InitE.FrontendStages.Globals.Output68
import InitE.FrontendStages.Declarations.Data68
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate52
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate68_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified68) =
        some globalOutput68 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal68 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified68) := by trivial
theorem globalException68_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified68) = none := by rfl
#print axioms globalTranslate68_eq
end InitE.FrontendStages.Declarations
