import InitE.FrontendStages.Globals.Output62
import InitE.FrontendStages.Declarations.Data62
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate46
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate62_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified62) =
        some globalOutput62 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal62 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified62) := by trivial
theorem globalException62_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified62) = none := by rfl
#print axioms globalTranslate62_eq
end InitE.FrontendStages.Declarations
