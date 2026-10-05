import InitE.FrontendStages.Globals.Output744
import InitE.FrontendStages.Declarations.Data744
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate723
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate744_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified744) =
        some globalOutput744 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal744 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified744) := by trivial
theorem globalException744_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified744) = none := by rfl
#print axioms globalTranslate744_eq
end InitE.FrontendStages.Declarations
