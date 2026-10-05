import InitE.FrontendStages.Globals.Output317
import InitE.FrontendStages.Declarations.Data317
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate301
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate317_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified317) =
        some globalOutput317 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal317 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified317) := by trivial
theorem globalException317_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified317) = none := by rfl
#print axioms globalTranslate317_eq
end InitE.FrontendStages.Declarations
