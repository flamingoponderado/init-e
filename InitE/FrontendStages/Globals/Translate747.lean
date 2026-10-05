import InitE.FrontendStages.Globals.Output747
import InitE.FrontendStages.Declarations.Data747
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate726
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate747_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified747) =
        some globalOutput747 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal747 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified747) := by trivial
theorem globalException747_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified747) = none := by rfl
#print axioms globalTranslate747_eq
end InitE.FrontendStages.Declarations
