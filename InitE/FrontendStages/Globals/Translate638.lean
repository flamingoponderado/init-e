import InitE.FrontendStages.Globals.Output638
import InitE.FrontendStages.Declarations.Data638
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate617
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate638_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified638) =
        some globalOutput638 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal638 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified638) := by trivial
theorem globalException638_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified638) = none := by rfl
#print axioms globalTranslate638_eq
end InitE.FrontendStages.Declarations
