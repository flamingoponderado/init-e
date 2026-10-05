import InitE.FrontendStages.Globals.Output497
import InitE.FrontendStages.Declarations.Data497
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate481
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate497_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified497) =
        some globalOutput497 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal497 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified497) := by trivial
theorem globalException497_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified497) = none := by rfl
#print axioms globalTranslate497_eq
end InitE.FrontendStages.Declarations
