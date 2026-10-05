import InitE.FrontendStages.Globals.Output862
import InitE.FrontendStages.Declarations.Data862
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate845
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate862_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified862) =
        some globalOutput862 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal862 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified862) := by trivial
theorem globalException862_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified862) = none := by rfl
#print axioms globalTranslate862_eq
end InitE.FrontendStages.Declarations
