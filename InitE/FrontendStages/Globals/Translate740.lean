import InitE.FrontendStages.Globals.Output740
import InitE.FrontendStages.Declarations.Data740
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate718
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate740_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified740) =
        some globalOutput740 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal740 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified740) := by trivial
theorem globalException740_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified740) = none := by rfl
#print axioms globalTranslate740_eq
end InitE.FrontendStages.Declarations
