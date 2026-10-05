import InitE.FrontendStages.Globals.Output789
import InitE.FrontendStages.Declarations.Data789
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate773
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate789_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified789) =
        some globalOutput789 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal789 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified789) := by trivial
theorem globalException789_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified789) = none := by rfl
#print axioms globalTranslate789_eq
end InitE.FrontendStages.Declarations
