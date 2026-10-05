import InitE.FrontendStages.Globals.Output473
import InitE.FrontendStages.Declarations.Data473
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate457
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate473_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified473) =
        some globalOutput473 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal473 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified473) := by trivial
theorem globalException473_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified473) = none := by rfl
#print axioms globalTranslate473_eq
end InitE.FrontendStages.Declarations
