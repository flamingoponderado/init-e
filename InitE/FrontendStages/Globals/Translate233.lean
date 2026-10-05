import InitE.FrontendStages.Globals.Output233
import InitE.FrontendStages.Declarations.Data233
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate215
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate233_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified233) =
        some globalOutput233 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal233 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified233) := by trivial
theorem globalException233_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified233) = none := by rfl
#print axioms globalTranslate233_eq
end InitE.FrontendStages.Declarations
