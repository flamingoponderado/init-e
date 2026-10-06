import InitE.FrontendStages.Globals.Output541
import InitE.FrontendStages.Declarations.Data541
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate525
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate541_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified541) =
        some globalOutput541 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal541 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified541) := by trivial
theorem globalException541_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified541) = none := by rfl
#print axioms globalTranslate541_eq
end InitE.FrontendStages.Declarations
