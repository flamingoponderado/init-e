import InitE.FrontendStages.Globals.Output397
import InitE.FrontendStages.Declarations.Data397
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate381
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate397_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified397) =
        some globalOutput397 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal397 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified397) := by trivial
theorem globalException397_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified397) = none := by rfl
#print axioms globalTranslate397_eq
end InitE.FrontendStages.Declarations
