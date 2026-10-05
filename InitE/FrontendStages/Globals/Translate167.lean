import InitE.FrontendStages.Globals.Output167
import InitE.FrontendStages.Declarations.Data167
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate151
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate167_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified167) =
        some globalOutput167 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal167 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified167) := by trivial
theorem globalException167_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified167) = none := by rfl
#print axioms globalTranslate167_eq
end InitE.FrontendStages.Declarations
