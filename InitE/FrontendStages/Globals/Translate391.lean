import InitE.FrontendStages.Globals.Output391
import InitE.FrontendStages.Declarations.Data391
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate375
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate391_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified391) =
        some globalOutput391 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal391 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified391) := by trivial
theorem globalException391_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified391) = none := by rfl
#print axioms globalTranslate391_eq
end InitE.FrontendStages.Declarations
