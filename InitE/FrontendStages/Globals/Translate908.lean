import InitE.FrontendStages.Globals.Output908
import InitE.FrontendStages.Declarations.Data908
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate875
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate908_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified908) =
        some globalOutput908 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal908 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified908) := by trivial
theorem globalException908_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified908) = none := by rfl
#print axioms globalTranslate908_eq
end InitE.FrontendStages.Declarations
