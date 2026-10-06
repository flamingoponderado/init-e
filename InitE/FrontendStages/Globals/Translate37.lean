import InitE.FrontendStages.Globals.Output37
import InitE.FrontendStages.Declarations.Data37
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate21
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate37_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified37) =
        some globalOutput37 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal37 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified37) := by trivial
theorem globalException37_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified37) = none := by rfl
#print axioms globalTranslate37_eq
end InitE.FrontendStages.Declarations
