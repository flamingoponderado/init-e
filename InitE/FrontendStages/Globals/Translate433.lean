import InitE.FrontendStages.Globals.Output433
import InitE.FrontendStages.Declarations.Data433
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate417
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate433_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified433) =
        some globalOutput433 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal433 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified433) := by trivial
theorem globalException433_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified433) = none := by rfl
#print axioms globalTranslate433_eq
end InitE.FrontendStages.Declarations
