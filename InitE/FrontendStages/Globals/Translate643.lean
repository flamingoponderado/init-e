import InitE.FrontendStages.Globals.Output643
import InitE.FrontendStages.Declarations.Data643
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate627
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate643_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified643) =
        some globalOutput643 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal643 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified643) := by trivial
theorem globalException643_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified643) = none := by rfl
#print axioms globalTranslate643_eq
end InitE.FrontendStages.Declarations
