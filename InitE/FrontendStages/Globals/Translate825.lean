import InitE.FrontendStages.Globals.Output825
import InitE.FrontendStages.Declarations.Data825
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate809
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate825_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified825) =
        some globalOutput825 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal825 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified825) := by trivial
theorem globalException825_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified825) = none := by rfl
#print axioms globalTranslate825_eq
end InitE.FrontendStages.Declarations
