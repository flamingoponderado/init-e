import InitE.FrontendStages.Globals.Output853
import InitE.FrontendStages.Declarations.Data853
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate836
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate853_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified853) =
        some globalOutput853 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal853 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified853) := by trivial
theorem globalException853_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified853) = none := by rfl
#print axioms globalTranslate853_eq
end InitE.FrontendStages.Declarations
