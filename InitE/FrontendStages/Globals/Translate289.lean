import InitE.FrontendStages.Globals.Output289
import InitE.FrontendStages.Declarations.Data289
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate273
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate289_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified289) =
        some globalOutput289 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal289 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified289) := by trivial
theorem globalException289_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified289) = none := by rfl
#print axioms globalTranslate289_eq
end InitE.FrontendStages.Declarations
