import InitE.FrontendStages.Globals.Output571
import InitE.FrontendStages.Declarations.Data571
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate551
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate571_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified571) =
        some globalOutput571 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal571 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified571) := by trivial
theorem globalException571_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified571) = none := by rfl
#print axioms globalTranslate571_eq
end InitE.FrontendStages.Declarations
