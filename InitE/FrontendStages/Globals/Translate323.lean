import InitE.FrontendStages.Globals.Output323
import InitE.FrontendStages.Declarations.Data323
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate307
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate323_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified323) =
        some globalOutput323 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal323 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified323) := by trivial
theorem globalException323_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified323) = none := by rfl
#print axioms globalTranslate323_eq
end InitE.FrontendStages.Declarations
