import InitE.FrontendStages.Globals.Output335
import InitE.FrontendStages.Declarations.Data335
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate319
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate335_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified335) =
        some globalOutput335 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal335 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified335) := by trivial
theorem globalException335_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified335) = none := by rfl
#print axioms globalTranslate335_eq
end InitE.FrontendStages.Declarations
