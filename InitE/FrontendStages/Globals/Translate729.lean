import InitE.FrontendStages.Globals.Output729
import InitE.FrontendStages.Declarations.Data729
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate712
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate729_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified729) =
        some globalOutput729 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal729 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified729) := by trivial
theorem globalException729_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified729) = none := by rfl
#print axioms globalTranslate729_eq
end InitE.FrontendStages.Declarations
