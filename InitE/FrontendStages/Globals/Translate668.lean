import InitE.FrontendStages.Globals.Output668
import InitE.FrontendStages.Declarations.Data668
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate637
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate668_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified668) =
        some globalOutput668 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal668 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified668) := by trivial
theorem globalException668_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified668) = none := by rfl
#print axioms globalTranslate668_eq
end InitE.FrontendStages.Declarations
