import InitE.FrontendStages.Globals.Output644
import InitE.FrontendStages.Declarations.Data644
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate628
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate644_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified644) =
        some globalOutput644 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal644 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified644) := by trivial
theorem globalException644_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified644) = none := by rfl
#print axioms globalTranslate644_eq
end InitE.FrontendStages.Declarations
