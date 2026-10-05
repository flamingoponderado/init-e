import InitE.FrontendStages.Globals.Output523
import InitE.FrontendStages.Declarations.Data523
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate507
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate523_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified523) =
        some globalOutput523 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal523 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified523) := by trivial
theorem globalException523_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified523) = none := by rfl
#print axioms globalTranslate523_eq
end InitE.FrontendStages.Declarations
