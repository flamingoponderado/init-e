import InitE.FrontendStages.Globals.Output379
import InitE.FrontendStages.Declarations.Data379
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate363
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate379_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified379) =
        some globalOutput379 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal379 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified379) := by trivial
theorem globalException379_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified379) = none := by rfl
#print axioms globalTranslate379_eq
end InitE.FrontendStages.Declarations
