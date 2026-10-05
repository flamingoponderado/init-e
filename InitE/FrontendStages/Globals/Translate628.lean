import InitE.FrontendStages.Globals.Output628
import InitE.FrontendStages.Declarations.Data628
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate603
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate628_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified628) =
        some globalOutput628 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal628 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified628) := by trivial
theorem globalException628_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified628) = none := by rfl
#print axioms globalTranslate628_eq
end InitE.FrontendStages.Declarations
