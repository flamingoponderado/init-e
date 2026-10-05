import InitE.FrontendStages.Globals.Output558
import InitE.FrontendStages.Declarations.Data558
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate542
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate558_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified558) =
        some globalOutput558 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal558 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified558) := by trivial
theorem globalException558_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified558) = none := by rfl
#print axioms globalTranslate558_eq
end InitE.FrontendStages.Declarations
