import InitE.FrontendStages.Globals.Output294
import InitE.FrontendStages.Declarations.Data294
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate278
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate294_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified294) =
        some globalOutput294 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal294 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified294) := by trivial
theorem globalException294_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified294) = none := by rfl
#print axioms globalTranslate294_eq
end InitE.FrontendStages.Declarations
