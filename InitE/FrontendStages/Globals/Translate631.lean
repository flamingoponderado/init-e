import InitE.FrontendStages.Globals.Output631
import InitE.FrontendStages.Declarations.Data631
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate606
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate631_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified631) =
        some globalOutput631 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal631 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified631) := by trivial
theorem globalException631_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified631) = none := by rfl
#print axioms globalTranslate631_eq
end InitE.FrontendStages.Declarations
