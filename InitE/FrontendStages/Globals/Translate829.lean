import InitE.FrontendStages.Globals.Output829
import InitE.FrontendStages.Declarations.Data829
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate813
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate829_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified829) =
        some globalOutput829 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal829 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified829) := by trivial
theorem globalException829_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified829) = none := by rfl
#print axioms globalTranslate829_eq
end InitE.FrontendStages.Declarations
