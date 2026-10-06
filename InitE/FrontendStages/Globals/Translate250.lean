import InitE.FrontendStages.Globals.Output250
import InitE.FrontendStages.Declarations.Data250
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate227
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate250_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified250) =
        some globalOutput250 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal250 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified250) := by trivial
theorem globalException250_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified250) = none := by rfl
#print axioms globalTranslate250_eq
end InitE.FrontendStages.Declarations
