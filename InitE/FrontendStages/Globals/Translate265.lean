import InitE.FrontendStages.Globals.Output265
import InitE.FrontendStages.Declarations.Data265
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate249
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate265_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified265) =
        some globalOutput265 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal265 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified265) := by trivial
theorem globalException265_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified265) = none := by rfl
#print axioms globalTranslate265_eq
end InitE.FrontendStages.Declarations
