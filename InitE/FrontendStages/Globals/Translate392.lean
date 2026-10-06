import InitE.FrontendStages.Globals.Output392
import InitE.FrontendStages.Declarations.Data392
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate376
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate392_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified392) =
        some globalOutput392 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal392 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified392) := by trivial
theorem globalException392_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified392) = none := by rfl
#print axioms globalTranslate392_eq
end InitE.FrontendStages.Declarations
