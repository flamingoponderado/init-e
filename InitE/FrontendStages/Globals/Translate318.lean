import InitE.FrontendStages.Globals.Output318
import InitE.FrontendStages.Declarations.Data318
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate302
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate318_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified318) =
        some globalOutput318 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal318 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified318) := by trivial
theorem globalException318_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified318) = none := by rfl
#print axioms globalTranslate318_eq
end InitE.FrontendStages.Declarations
