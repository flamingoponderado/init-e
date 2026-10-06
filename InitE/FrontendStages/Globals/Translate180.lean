import InitE.FrontendStages.Globals.Output180
import InitE.FrontendStages.Declarations.Data180
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate164
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate180_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified180) =
        some globalOutput180 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal180 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified180) := by trivial
theorem globalException180_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified180) = none := by rfl
#print axioms globalTranslate180_eq
end InitE.FrontendStages.Declarations
