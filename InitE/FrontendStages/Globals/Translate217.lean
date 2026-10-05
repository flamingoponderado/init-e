import InitE.FrontendStages.Globals.Output217
import InitE.FrontendStages.Declarations.Data217
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate201
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate217_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified217) =
        some globalOutput217 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal217 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified217) := by trivial
theorem globalException217_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified217) = none := by rfl
#print axioms globalTranslate217_eq
end InitE.FrontendStages.Declarations
