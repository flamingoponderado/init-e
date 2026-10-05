import InitE.FrontendStages.Globals.Output321
import InitE.FrontendStages.Declarations.Data321
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate305
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate321_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified321) =
        some globalOutput321 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal321 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified321) := by trivial
theorem globalException321_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified321) = none := by rfl
#print axioms globalTranslate321_eq
end InitE.FrontendStages.Declarations
