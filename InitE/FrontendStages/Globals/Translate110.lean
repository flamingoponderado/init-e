import InitE.FrontendStages.Globals.Output110
import InitE.FrontendStages.Declarations.Data110
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate88
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate110_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified110) =
        some globalOutput110 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal110 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified110) := by trivial
theorem globalException110_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified110) = none := by rfl
#print axioms globalTranslate110_eq
end InitE.FrontendStages.Declarations
