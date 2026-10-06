import InitE.FrontendStages.Globals.Output848
import InitE.FrontendStages.Declarations.Data848
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate832
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate848_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified848) =
        some globalOutput848 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal848 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified848) := by trivial
theorem globalException848_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified848) = none := by rfl
#print axioms globalTranslate848_eq
end InitE.FrontendStages.Declarations
