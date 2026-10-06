import InitE.FrontendStages.Globals.Output547
import InitE.FrontendStages.Declarations.Data547
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate531
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate547_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified547) =
        some globalOutput547 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal547 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified547) := by trivial
theorem globalException547_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified547) = none := by rfl
#print axioms globalTranslate547_eq
end InitE.FrontendStages.Declarations
