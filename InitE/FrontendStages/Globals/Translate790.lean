import InitE.FrontendStages.Globals.Output790
import InitE.FrontendStages.Declarations.Data790
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate774
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate790_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified790) =
        some globalOutput790 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal790 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified790) := by trivial
theorem globalException790_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified790) = none := by rfl
#print axioms globalTranslate790_eq
end InitE.FrontendStages.Declarations
