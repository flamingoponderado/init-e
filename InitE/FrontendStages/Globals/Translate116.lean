import InitE.FrontendStages.Globals.Output116
import InitE.FrontendStages.Declarations.Data116
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate97
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate116_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified116) =
        some globalOutput116 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal116 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified116) := by trivial
theorem globalException116_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified116) = none := by rfl
#print axioms globalTranslate116_eq
end InitE.FrontendStages.Declarations
