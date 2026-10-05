import InitE.FrontendStages.Globals.Output313
import InitE.FrontendStages.Declarations.Data313
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate296
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate313_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified313) =
        some globalOutput313 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal313 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified313) := by trivial
theorem globalException313_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified313) = none := by rfl
#print axioms globalTranslate313_eq
end InitE.FrontendStages.Declarations
