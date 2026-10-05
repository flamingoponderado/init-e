import InitE.FrontendStages.Globals.Output347
import InitE.FrontendStages.Declarations.Data347
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate331
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate347_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified347) =
        some globalOutput347 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal347 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified347) := by trivial
theorem globalException347_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified347) = none := by rfl
#print axioms globalTranslate347_eq
end InitE.FrontendStages.Declarations
