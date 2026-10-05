import InitE.FrontendStages.Globals.Output502
import InitE.FrontendStages.Declarations.Data502
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate486
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate502_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified502) =
        some globalOutput502 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal502 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified502) := by trivial
theorem globalException502_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified502) = none := by rfl
#print axioms globalTranslate502_eq
end InitE.FrontendStages.Declarations
