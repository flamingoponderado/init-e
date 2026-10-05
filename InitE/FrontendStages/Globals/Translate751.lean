import InitE.FrontendStages.Globals.Output751
import InitE.FrontendStages.Declarations.Data751
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate730
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate751_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified751) =
        some globalOutput751 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal751 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified751) := by trivial
theorem globalException751_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified751) = none := by rfl
#print axioms globalTranslate751_eq
end InitE.FrontendStages.Declarations
