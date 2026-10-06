import InitE.FrontendStages.Globals.Output578
import InitE.FrontendStages.Declarations.Data578
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate558
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate578_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified578) =
        some globalOutput578 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal578 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified578) := by trivial
theorem globalException578_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified578) = none := by rfl
#print axioms globalTranslate578_eq
end InitE.FrontendStages.Declarations
