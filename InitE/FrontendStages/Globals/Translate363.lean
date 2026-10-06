import InitE.FrontendStages.Globals.Output363
import InitE.FrontendStages.Declarations.Data363
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate340
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate363_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified363) =
        some globalOutput363 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal363 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified363) := by trivial
theorem globalException363_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified363) = none := by rfl
#print axioms globalTranslate363_eq
end InitE.FrontendStages.Declarations
