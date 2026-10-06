import InitE.FrontendStages.Globals.Output104
import InitE.FrontendStages.Declarations.Data104
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate83
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate104_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified104) =
        some globalOutput104 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal104 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified104) := by trivial
theorem globalException104_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified104) = none := by rfl
#print axioms globalTranslate104_eq
end InitE.FrontendStages.Declarations
