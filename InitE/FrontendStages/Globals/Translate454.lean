import InitE.FrontendStages.Globals.Output454
import InitE.FrontendStages.Declarations.Data454
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate433
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate454_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified454) =
        some globalOutput454 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal454 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified454) := by trivial
theorem globalException454_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified454) = none := by rfl
#print axioms globalTranslate454_eq
end InitE.FrontendStages.Declarations
