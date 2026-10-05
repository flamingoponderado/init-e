import InitE.FrontendStages.Globals.Output89
import InitE.FrontendStages.Declarations.Data89
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate73
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate89_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified89) =
        some globalOutput89 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal89 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified89) := by trivial
theorem globalException89_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified89) = none := by rfl
#print axioms globalTranslate89_eq
end InitE.FrontendStages.Declarations
