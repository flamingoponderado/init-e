import InitE.FrontendStages.Globals.Output414
import InitE.FrontendStages.Declarations.Data414
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate393
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate414_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified414) =
        some globalOutput414 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal414 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified414) := by trivial
theorem globalException414_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified414) = none := by rfl
#print axioms globalTranslate414_eq
end InitE.FrontendStages.Declarations
