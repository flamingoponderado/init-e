import InitE.FrontendStages.Globals.Output682
import InitE.FrontendStages.Declarations.Data682
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate666
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate682_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified682) =
        some globalOutput682 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal682 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified682) := by trivial
theorem globalException682_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified682) = none := by rfl
#print axioms globalTranslate682_eq
end InitE.FrontendStages.Declarations
