import InitE.FrontendStages.Globals.Output824
import InitE.FrontendStages.Declarations.Data824
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate808
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate824_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified824) =
        some globalOutput824 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal824 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified824) := by trivial
theorem globalException824_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified824) = none := by rfl
#print axioms globalTranslate824_eq
end InitE.FrontendStages.Declarations
