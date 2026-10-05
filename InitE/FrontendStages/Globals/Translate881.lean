import InitE.FrontendStages.Globals.Output881
import InitE.FrontendStages.Declarations.Data881
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate865
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate881_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified881) =
        some globalOutput881 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal881 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified881) := by trivial
theorem globalException881_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified881) = none := by rfl
#print axioms globalTranslate881_eq
end InitE.FrontendStages.Declarations
