import InitE.FrontendStages.Globals.Output372
import InitE.FrontendStages.Declarations.Data372
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate349
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate372_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified372) =
        some globalOutput372 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal372 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified372) := by trivial
theorem globalException372_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified372) = none := by rfl
#print axioms globalTranslate372_eq
end InitE.FrontendStages.Declarations
