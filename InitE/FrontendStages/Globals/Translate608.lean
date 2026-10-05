import InitE.FrontendStages.Globals.Output608
import InitE.FrontendStages.Declarations.Data608
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate592
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate608_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified608) =
        some globalOutput608 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal608 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified608) := by trivial
theorem globalException608_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified608) = none := by rfl
#print axioms globalTranslate608_eq
end InitE.FrontendStages.Declarations
