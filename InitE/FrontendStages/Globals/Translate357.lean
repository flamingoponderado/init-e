import InitE.FrontendStages.Globals.Output357
import InitE.FrontendStages.Declarations.Data357
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate334
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate357_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified357) =
        some globalOutput357 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal357 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified357) := by trivial
theorem globalException357_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified357) = none := by rfl
#print axioms globalTranslate357_eq
end InitE.FrontendStages.Declarations
