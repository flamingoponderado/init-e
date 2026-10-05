import InitE.FrontendStages.Globals.Output435
import InitE.FrontendStages.Declarations.Data435
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate419
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate435_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified435) =
        some globalOutput435 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal435 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified435) := by trivial
theorem globalException435_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified435) = none := by rfl
#print axioms globalTranslate435_eq
end InitE.FrontendStages.Declarations
