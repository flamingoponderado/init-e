import InitE.FrontendStages.Globals.Output140
import InitE.FrontendStages.Declarations.Data140
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate124
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate140_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified140) =
        some globalOutput140 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal140 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified140) := by trivial
theorem globalException140_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified140) = none := by rfl
#print axioms globalTranslate140_eq
end InitE.FrontendStages.Declarations
