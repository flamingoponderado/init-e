import InitE.FrontendStages.Globals.Output477
import InitE.FrontendStages.Declarations.Data477
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate461
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate477_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified477) =
        some globalOutput477 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal477 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified477) := by trivial
theorem globalException477_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified477) = none := by rfl
#print axioms globalTranslate477_eq
end InitE.FrontendStages.Declarations
