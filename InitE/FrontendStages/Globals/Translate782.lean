import InitE.FrontendStages.Globals.Output782
import InitE.FrontendStages.Declarations.Data782
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate766
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate782_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified782) =
        some globalOutput782 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal782 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified782) := by trivial
theorem globalException782_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified782) = none := by rfl
#print axioms globalTranslate782_eq
end InitE.FrontendStages.Declarations
