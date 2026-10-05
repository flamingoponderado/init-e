import InitE.FrontendStages.Globals.Output900
import InitE.FrontendStages.Declarations.Data900
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate868
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate900_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified900) =
        some globalOutput900 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal900 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified900) := by trivial
theorem globalException900_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified900) = none := by rfl
#print axioms globalTranslate900_eq
end InitE.FrontendStages.Declarations
