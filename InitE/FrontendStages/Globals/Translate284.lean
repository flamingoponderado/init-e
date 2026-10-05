import InitE.FrontendStages.Globals.Output284
import InitE.FrontendStages.Declarations.Data284
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate268
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate284_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified284) =
        some globalOutput284 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal284 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified284) := by trivial
theorem globalException284_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified284) = none := by rfl
#print axioms globalTranslate284_eq
end InitE.FrontendStages.Declarations
