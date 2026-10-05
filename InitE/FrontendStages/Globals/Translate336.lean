import InitE.FrontendStages.Globals.Output336
import InitE.FrontendStages.Declarations.Data336
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate320
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate336_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified336) =
        some globalOutput336 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal336 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified336) := by trivial
theorem globalException336_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified336) = none := by rfl
#print axioms globalTranslate336_eq
end InitE.FrontendStages.Declarations
