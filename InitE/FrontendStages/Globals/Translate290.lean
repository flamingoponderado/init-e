import InitE.FrontendStages.Globals.Output290
import InitE.FrontendStages.Declarations.Data290
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate274
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate290_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified290) =
        some globalOutput290 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal290 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified290) := by trivial
theorem globalException290_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified290) = none := by rfl
#print axioms globalTranslate290_eq
end InitE.FrontendStages.Declarations
