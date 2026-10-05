import InitE.FrontendStages.Globals.Output411
import InitE.FrontendStages.Declarations.Data411
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate390
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate411_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified411) =
        some globalOutput411 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal411 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified411) := by trivial
theorem globalException411_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified411) = none := by rfl
#print axioms globalTranslate411_eq
end InitE.FrontendStages.Declarations
